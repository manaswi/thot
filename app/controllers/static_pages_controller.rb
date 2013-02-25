class StaticPagesController < ApplicationController
  def home
    respond_to do |format|
      format.html
      format.json { render json: @post }
    end
  end

  def about
  end
end
