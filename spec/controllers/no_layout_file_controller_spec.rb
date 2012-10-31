require "spec_helper"

describe NoLayoutFileController do
  render_views

  context "GET :index" do
    let(:layout) { "application" }
    let(:action) { :index }
    it_should_behave_like "custom layout"
  end
end
