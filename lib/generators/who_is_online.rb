# frozen_string_literal: true

require 'rails/generators/named_base'

module WhoIsOnline
  # A generator module with WhoIsOnline table schema.
  module Generators
    # A base module
    module Base
      # Get path for migration template
      def source_root
        @_sk_progress_bar_source_root ||= File.expand_path(File.join('../who_is_online', generator_name, 'templates'), __FILE__)
      end
    end
  end
end