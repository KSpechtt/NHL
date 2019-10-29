class ConferencesController < ApplicationController
  def show
    @conferences = Conference.find(params[:id])
  end

  def index
    @conferences = Conference.order(:conference_name)
  end
end
