require "spec_helper"

describe SamplesController do
  render_views

  context "GET :index" do
    let(:layout) { "application" }
    let(:action) { :index }
    it_should_behave_like "custom layout"
  end

  context "GET :show" do
    let(:layout) { "site" }
    let(:action) { :show }
    it_should_behave_like "custom layout"
  end

  context "GET :edit" do
    let(:layout) { "modal" }
    let(:action) { :edit }
    it_should_behave_like "custom layout"
  end

  context "GET :remove" do
    let(:layout) { "samples" }
    let(:action) { :remove }
    it_should_behave_like "custom layout"
  end
end
