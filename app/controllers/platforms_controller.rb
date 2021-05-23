class PlatformsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
    @platforms = Platform.all
  end

  def show
    @platform = Platform.find(params[:id])
    @positions = @platform.positions
  end

  def new
    @platform = Platform.new
  end

  def create
    @platform = Platform.create(platform_params)

    if @platform.save
      flash.notice = "Platform, #{@platform.name} created"
      redirect_to platforms_path
    else
      render :new
    end
  end

  def edit
    @platform = Platform.find(params[:id])
  end

  def update
    @platform = Platform.find(params[:id])

    if @platform.update(platform_params)
      flash.notice = "Platform updated"
      redirect_to platforms_path
    else
      flash.error = "Uh oh"
      render :edit
    end
  end

  private
    def platform_params
      params.require(:platform).permit(:name, :organisation_id)
    end
end
