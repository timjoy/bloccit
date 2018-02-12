class SponsoredPostController < ApplicationController
  # def index
  #   @sponsoredpost = SponsoredPost.all
  # end

  def show
    @sponsoredpost = SponsoredPost.find(params[:id])
  end

  def new
  end

  def edit
  end
end
