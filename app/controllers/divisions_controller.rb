# frozen_string_literal: true

class DivisionsController < ApplicationController
  def show
    # render template: "teams/#{params[:page]}"
  end

  def index
    @divisions = Division.order(:division_name)
  end
end
