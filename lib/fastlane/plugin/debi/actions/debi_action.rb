require 'fastlane/action'
require_relative '../helper/debi_helper'

module Fastlane
  module Actions
    class DebiAction < Action
      def self.run(params)
        UI.message("The debi plugin is working!")
        require "open-uri"

        open("https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/test.original.jpg") do |image|
          File.open("./test.jpg", "wb") do |file|
            file.write(image.read)
          end
        end
      end

      def self.description
        "I am having a good time"
      end

      def self.authors
        ["Debi"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "I am having a very good time"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "DEBI_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
