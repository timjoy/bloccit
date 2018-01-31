class AdvertisementController < ApplicationController
  def index
    @advertisement = Advertisement.all

  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = advertisement.new
    @advertisement.title = params[:advertisement][:title]
    @advertisement.body = params[:advertisement][:body]

    if @advertisement.save
      flash[:notice] = "advertisement was saved."
      redirect_to @advertisement
    else
      flash.now[:alert] = "There was an error saving the advertisement. Please try again."
      render :new
    end
    # connect to a (as yet undefined) method that allows an
    # advertiser to insert their advertisement
  end
end
