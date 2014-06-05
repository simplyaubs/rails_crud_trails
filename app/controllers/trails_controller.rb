class TrailsController < ApplicationController

  def index
    @trail = Trail.new
    @trails = Trail.all
  end

  def create
    @trail = Trail.create(trail_params)
    if @trail.save
      redirect_to trails_path
    else
      render :index
    end
  end

  private
  def trail_params
    params.require(:trail).permit(:name, :difficulty)
  end
end