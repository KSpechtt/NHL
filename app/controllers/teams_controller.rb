# frozen_string_literal: true

class TeamsController < ApplicationController
  def show
    # render template: "teams/#{params[:page]}"
  end

  def index
    @teams = Team.order(:name)
  end
end
