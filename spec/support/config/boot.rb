require "bundler"
Bundler.setup

require "rails"
require "action_controller/railtie"

Bundler.require(:default)

module Layout
  class Application < Rails::Application
    config.root = File.dirname(__FILE__) + "/.."
    config.active_support.deprecation = :log
  end
end

Layout::Application.initialize!
