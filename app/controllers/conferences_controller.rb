class ConferencesController < ApplicationController
  def show
    # render template: "teams/#{params[:page]}"
  end

  def index
    @conferences = Conference.order(:conference_name)
  end
end
