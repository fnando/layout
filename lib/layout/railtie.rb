# frozen_string_literal: true

require "rails/railtie"

module Layout
  class Railtie < Rails::Railtie
    ActiveSupport.on_load(:action_controller) do
      include Base
    end
  end
end
