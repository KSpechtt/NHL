# frozen_string_literal: true

class TeamsController < ApplicationController
  def show
    @teams = Team.find(params[:id])
  end

  def index
    @teams = Team.order(:name)
  end
end
