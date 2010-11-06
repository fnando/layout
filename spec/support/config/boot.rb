ENV["BUNDLE_GEMFILE"] = File.dirname(__FILE__) + "/../../../../Gemfile"
require "bundler"
Bundler.setup

require "rails"

%w(
  action_controller
  rails/test_unit
).each do |framework|
  begin
    require "#{framework}/railtie"
  rescue LoadError
  end
end


Bundler.require(:default)

module Layout
  class Application < Rails::Application
    config.root = File.dirname(__FILE__) + "/.."
    config.active_support.deprecation = :log
  end
end

Layout::Application.initialize!
