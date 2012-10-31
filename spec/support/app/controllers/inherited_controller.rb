class InheritedController < SamplesController
  set_layout :missing, :only => :index

  def index
    render "/action"
  end
end
