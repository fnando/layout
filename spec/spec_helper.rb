ENV["RAILS_ENV"] = "test"
ENV["BUNDLE_GEMFILE"] = File.expand_path("../../Gemfile", __FILE__)
require "rails"
require "layout"
require "support/config/boot"
require "rspec/rails"
require "support/custom_layout_shared"
