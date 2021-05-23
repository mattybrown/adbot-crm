class PositionsController < ApplicationController

  def new
    @position = Position.new
    @platforms = Platform.all
  end

  def create
    @position = Position.create(position_params)

    if @position.save
      flash.notice = "Position, #{@position.name} created"
      redirect_to platforms_path
    else
      render :new
    end
  end

  def position_params
    params.require(:position).permit(:name, :platform_id)
  end

end
