# frozen_string_literal: true

class PlayersController < ApplicationController
  def show
    @players = Player.find(params[:id])
  end

  def index
    @players = Player.order(:full_name).page(params[:page])
    # @player = Player.order(:full_name)
  end

  def search_results
    @q = params[:q]
    @players = Player.where('full_name LIKE ?', "%#{@q}%").page(params[:page])
  end
end
