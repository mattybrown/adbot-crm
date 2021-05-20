class PlatformsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  def index
    @platforms = Platform.all
  end

  def new
    @platform = Platform.new
  end

  def create
    @platform = Platform.create(platform_params)

    if @platform.save
      redirect_to platforms_path
    else
      render :new
    end
  end

  private
    def platform_params
      params.require(:platform).permit(:name, :organisation_id)
    end
end
