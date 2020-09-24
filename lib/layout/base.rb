# frozen_string_literal: true

module Layout
  module Base
    def self.included(base)
      base.class_eval do
        include InstanceMethods

        def self.layout_options
          @layout_options ||= []
        end

        def self.layout_options=(options)
          @layout_options = options
        end

        # Set current action's layout.
        # Works in the same old fashion, but you can have multiple calls to it.
        #
        #   set_layout :application
        #   set_layout :site, :only => %w[show edit]
        #   set_layout :site, :except => %w[remove index]
        #
        def self.set_layout(name, options = {})
          layout_options << [name.to_s, options]
          layout :choose_layout
        end
      end
    end

    module InstanceMethods
      private def choose_layout
        layout_name = nil

        self.class.layout_options.each do |name, options|
          matched_only = options[:only] &&
                         validates_action_for_layout(true, options[:only])

          matched_except = options[:except] &&
                           validates_action_for_layout(false, options[:except])

          next unless matched_only || matched_except

          layout_name = name
          break
        end

        return layout_name if layout_name && lookup_context.find_all(layout_name.to_s, "layouts").first

        layout_name = self.class.ancestors
                          .take_while {|item| item.name != "ActionController::Base" }
                          .select {|item| item.instance_of?(Class) }
                          .map(&:controller_name)
                          .find {|name| lookup_context.find_all(name, "layouts").first }

        layout_name || "application"
      end

      private def validates_action_for_layout(compares_to, actions)
        [actions].flatten.map(&:to_sym).include?(action_name.to_sym) == compares_to
      end
    end
  end
end
