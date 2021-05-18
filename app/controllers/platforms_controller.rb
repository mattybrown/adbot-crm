class PlatformsController < ApplicationController
  def index
    @platforms = Platform.all
  end

  def new
    load_and_authorize_resource
    @platform = Platform.new
  end

  def create
    load_and_authorize_resource
    @platform = Platform.create(platform_params)

    if @platform.save
      redirect_to @platform
    else
      render :new
    end
  end

  private
    def platform_params
      params.require(:platform).permit(:name, :organisation_id)
    end
end
