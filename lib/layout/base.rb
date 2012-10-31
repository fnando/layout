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
          self.layout_options << [name, options]
        end

        layout :choose_layout
      end
    end

    module InstanceMethods
      private
      def choose_layout
        self.class.layout_options.each do |name, options|
          name = name.to_s

          if options[:only] && validates_action_for_layout(true, options[:only])
            return name
          elsif options[:except] && validates_action_for_layout(false, options[:except])
            return name
          end
        end

        nil
      end

      def validates_action_for_layout(compares_to, actions)
        [actions].flatten.collect(&:to_sym).include?(action_name.to_sym) == compares_to
      end
    end
  end
end