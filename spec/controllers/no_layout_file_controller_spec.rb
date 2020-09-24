# frozen_string_literal: true

require "spec_helper"

describe NoLayoutFileController, type: :controller do
  render_views

  context "GET :index" do
    let(:layout) { "application" }
    let(:action) { :index }
    it_should_behave_like "custom layout"
  end
end
