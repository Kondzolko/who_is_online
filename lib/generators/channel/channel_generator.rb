require 'generators/who_is_online'
require 'rails/generators/active_record'

module WhoIsOnline
  module Generators
    # Who Is Online generator that creates action_cable files from template
    class ChannelGenerator < ActiveRecord::Generators::Base
      extend Base

      argument :name, :type => :string, :default => 'who_is_online'
      # Add action cable in project's folder
      def generate_files
        copy_file 'who_is_online_channel.rb', "app/channels/#{name}_channel.rb"
        copy_file 'who_is_online.coffee', "app/assets/javascripts/channels/#{name}.coffee"
      end
    end
  end
end