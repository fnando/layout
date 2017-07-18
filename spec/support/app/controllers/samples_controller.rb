class SamplesController < ApplicationController
  set_layout "application", only: :index
  set_layout "site", only: :show
  set_layout "modal", except: [:index, :show, :remove]
  set_layout "window", only: :remove

  def index
    render "/action"
  end

  alias_method :show, :index
  alias_method :edit, :index
  alias_method :remove, :index
end
