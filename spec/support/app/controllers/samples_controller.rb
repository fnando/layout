# frozen_string_literal: true

class SamplesController < ApplicationController
  set_layout "application", only: :index
  set_layout "site", only: :show
  set_layout "modal", except: %i[index show remove]
  set_layout "window", only: :remove

  def index
    render "/action"
  end

  alias show index
  alias edit index
  alias remove index
end
