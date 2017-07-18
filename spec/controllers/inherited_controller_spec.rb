require "spec_helper"

describe InheritedController, type: :controller do
  render_views

  context "GET :index" do
    let(:layout) { "samples" }
    let(:action) { :index }
    it_should_behave_like "custom layout"
  end
end
