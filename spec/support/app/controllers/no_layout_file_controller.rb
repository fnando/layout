# frozen_string_literal: true

class NoLayoutFileController < ApplicationController
  set_layout :missing

  def index
    render "/action"
  end
end
