# frozen_string_literal: true

class PagesController < ApplicationController
  # GET /static/:permalink
  # def permalink
  #   @page = Page.find_by_permalink(params[:permalink])

  #   if @page
  #     render :show # /app/views/pages/show.html.erb
  #   else
  #     redirect_to root_path
  #   end
  # end

  # GET /pages
  # GET /pages.json
  # def index
  #   @pages = Page.all
  # end

  def show
    render template: "pages/#{params[:page]}"
  end
end
