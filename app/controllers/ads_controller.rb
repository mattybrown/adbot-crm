class AdsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
    if can? :manage, User
      @ads = Ad.all
    else
      @ads = current_user.ads
    end
    @ad = Ad.new
    @clients = Client.all
    @platforms = Platform.all
    @positions = Position.all
  end

  def create
    @ad = Ad.new(ad_params)

    respond_to do |format|
      if @ad.save
        format.html { redirect_to @ad, notice: 'Ad was successfully created.' }
        format.js
        format.json { render json: @ad, status: :created, location: @ad }
      else
        format.html { render action: "error" }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def ad_params
      params.require(:ad).permit(:width, :height, :status, :price, :rundate, :client_id, :position_id, :user_id, :updated_by)
    end

end
