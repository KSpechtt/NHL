# frozen_string_literal: true

class SearchesController < ApplicationController
  def new
    @search = Search.new
    c = Player.all.order(:jersey_number)
    @categories = c.pluck(:position_name).uniq
    @numbers = c.pluck(:jersey_number).uniq
    @conferences = Conference.pluck(:conference_name).uniq
    teams = Team.all.order(:name)
    @teams = teams.pluck(:name).uniq
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :category, :number, :team, :conference)
  end
end
