require 'fastercsv'

module SunDawg
  module Responsys
    class Member 
      attr_accessor :attributes

      @@fields = []
      @@system_fields = []
      @@profile_fields = []

      def initialize(options = {})
        @attributes = options 
      end

      def values(selected_fields = nil)
        a = []
        @@fields.each do |field|
          if selected_fields
            a << attributes[field] if selected_fields.include?(field)
          else
            a << attributes[field]
          end
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

        def profile_fields
          @@profile_fields 
        end

        def profile_fields=(a)
          @@profile_fields = a
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

        def to_csv_file(members, file_name, headers = false)
          build_csv_file(members, file_name, @@fields, headers)
        end
     
        # Produces two CSV files, one for the user profile section and for extraneous data 
        def to_csv_splitted_file(members, user_file_name, data_file_name, headers = false)
          data_attributes = @@fields.reject { |i| @@profile_fields.include?(i) }
          data_attributes = [:customer_id] + data_attributes unless data_attributes.include?(:customer_id)
          build_csv_file(members, data_file_name, data_attributes, headers)

          user_attributes = @@fields.select { |i| @@profile_fields.include?(i) }
          user_attributes = [:customer_id] + user_attributes unless user_attributes.include?(:customer_id)
          build_csv_file(members, user_file_name, user_attributes, headers) 
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

        def add_field (f, system = false)
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

        def build_csv_file(members, file_name, attributes, headers)
          FasterCSV.open(file_name, "a") do |csv|
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
