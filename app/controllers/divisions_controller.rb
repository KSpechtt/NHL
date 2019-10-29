# frozen_string_literal: true

class DivisionsController < ApplicationController
  def show
    @divisions = Division.find(params[:id])
  end

  def index
    @divisions = Division.order(:division_name)
  end
end
