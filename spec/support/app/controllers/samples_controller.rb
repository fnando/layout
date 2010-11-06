class SamplesController < ActionController::Base
  set_layout "application", :only => :index
  set_layout "site", :only => :show
  set_layout "modal", :except => [:index, :show]

  def index
  end

  def show
  end

  def edit
  end
end
