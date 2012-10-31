ENV["RAILS_ENV"] = "test"
ENV["BUNDLE_GEMFILE"] = File.expand_path("../../Gemfile", __FILE__)
require "rails"
require "layout"
require "support/config/boot"
require "rspec/rails"
require "support/custom_layout_shared"

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
end
