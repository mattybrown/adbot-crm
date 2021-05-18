class AdsController < ApplicationController

  def index

    @ads = current_user.ads
    @ad = Ad.new
    @clients = Client.all
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
