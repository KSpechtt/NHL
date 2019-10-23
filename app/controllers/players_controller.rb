# frozen_string_literal: true

class PlayersController < ApplicationController
  def show
    # render template: "players/#{params[:page]}"
  end

  def index
    @players = Player.order(:full_name).page(params[:page])
  end
end
