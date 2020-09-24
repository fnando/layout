# frozen_string_literal: true

require "bundler"
Bundler.setup

require "rails"
require "action_controller/railtie"

Bundler.require(:default)

module Layout
  class Application < Rails::Application
    config.root = "#{File.dirname(__FILE__)}/.."
    config.active_support.deprecation = :log
    config.eager_load = false
    config.secret_key_base = SecureRandom.hex(100)
  end
end

Layout::Application.initialize!
