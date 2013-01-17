require 'fastercsv'

module SunDawg
  module Responsys
    class Member 
      class UndefinedExtensions < StandardError
      end

      attr_accessor :attributes

      @@fields = []
      @@system_fields = []

      #
      # :file => [:attribute_1, :attribute_2, :attribute_3]
      #
      @@extension_fields = {} 

      def initialize(options = {})
        @attributes = options 
      end

      def values(selected_fields = @@fields)
        a = []
        selected_fields.each do |field|
          value = attributes[field]
          value.gsub!(/[[:cntrl:]]/,' ') if value.is_a? String
          a << value
        end
        a
      end

      class << self
        def fields
          @@fields
        end

        def system_fields
          @@system_fields 
        end

        def member_fields
          a = []
          extension_fields.values.each do |i|
            a += i
          end
          fields.reject{ |i| a.include?(i) }
        end

        def extension_fields
          @@extension_fields 
        end

        # :extension_table => [:field_1, :field_2, :field_3]
        def extension_fields=(h)
          @@extension_fields = h
        end

        # Parses the response CSV file from Responys
        def parse_feedback_csv(file_name)
          results = {}
          csv = FasterCSV.read(file_name)
          headers = csv.first
          csv.shift
          csv.each do |row|
            member = Member.new
            i = 0
            headers.each do |header| 
              value = row[i]
              header = from_responsys_field(header)
              member.send("#{header}=", value) if member.respond_to?("#{header}=")
              i += 1
            end
            results[member] = row.first
          end
          results
        end

        # Parses Responsys tab-delimitted feedback file
        def import_file(file_name)
          members = []
          headers = nil
          table = FasterCSV.read(file_name)
          table.each do |row|
            if headers.nil?
              headers = row
            else
              member = Member.new
              headers.each do |header|
                header = from_responsys_field(header)
                value = row.shift
                member.send("#{header}=", value) if member.respond_to?("#{header}=")
              end
              members << member
            end
          end
          members
        end

        def to_csv_file(members, file_name, options = {})
          options[:headers] = true if options[:headers].nil?
          options[:access] ||= "w"
          options[:file_token] ||= ""
          build_csv_file(members, file_name + options[:file_token], @@fields, options[:headers], options[:access])
        end
     
        # Produces multiple CSV files based on what has been defined for profile extensions
        def to_csv_extension_files(members, root_directory, options = {})
          options[:headers] = true if options[:headers].nil?
          options[:access] ||= "w"
          options[:file_token] ||= ""

          raise UndefinedExtensions if @@extension_fields.nil? || @@extension_fields.empty?
          extension_fields = []
          @@extension_fields.values.each do |i|
            extension_fields += i
          end
          extension_fields.flatten!

          # Create the profile extension CSVs
          @@extension_fields.each_pair do |file_name, attributes|
            attributes = [:customer_id] + attributes unless attributes.include?(:customer_id)
            build_csv_file(members, "#{root_directory}/#{file_name}#{options[:file_token]}.csv", attributes, options[:headers], options[:access])
          end
        end

        def clear_fields!
          @@fields.clear
          @@system_fields.clear
        end

        def responsys_fields(a = nil)
          (a || @@fields).map do |i|
            to_responsys_field(i)
          end
        end

        def has_field? (f)
          @@fields.include?(f) 
        end

        def has_system_field? (f)
          @@fields.include?(f) && @@system_fields.include?(f)
        end

        def add_field (f, system = false)
          # Prevent redundant fields
          return if @@fields.include?(f)

          @@fields << f
          @@system_fields << f if system

          define_method f do
            attributes[f]
          end 

          define_method to_responsys_field(f) do
            attributes[f]
          end
      
          define_method "#{f}=" do |v|
            attributes[f] = v
          end
        end

        protected

        # Turns all field attribute names into Responsys uppercase with _ i.e. foo => FOO_
        def to_responsys_field(s)
          if @@system_fields.include?(s)
            s.to_s.upcase + "_"
          else
            s.to_s.upcase
          end
        end

        # Turns all field attribute names from Responsys into ruby convention snake_case. FOO_BAR_ => foo_bar
        def from_responsys_field(s)
          s = s.to_s.downcase
          s.gsub(/_$/, "")
        end

        def build_csv_file(members, file_name, attributes, headers, access = "w")
          FasterCSV.open(file_name, access) do |csv|
            csv << responsys_fields(attributes) if headers
            members.each do |member|
              csv << member.values(attributes)
            end
          end
        end
      end
    end
  end
end
