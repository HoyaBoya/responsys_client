require 'fastercsv'

module SunDawg
  module Responsys
    class Member 
      attr_accessor :attributes

      @@fields = []
      @@system_fields = []

      def initialize(options = {})
        @attributes = options 
      end

      def values
        a = []
        @@fields.each do |field|
          a << attributes[field]
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

        def to_csv_file(members, file_name, headers = false)
          FasterCSV.open(file_name, "a") do |csv|
            csv << responsys_fields if headers
            members.each do |member|
              csv << member.values
            end
          end
        end

        def clear_fields!
          @@fields.clear
          @@system_fields.clear
        end

        def responsys_fields
          @@fields.map do |i|
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
      end
    end
  end
end
