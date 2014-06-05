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

  def show
    @trail = Trail.find(params[:id])
  end

  def edit
    @trail = Trail.find(params[:id])
  end

  def update
    @trail = Trail.find(params[:id])
    @trail.update_attributes!(trail_params)

    redirect_to trails_path(@trail)
  end

  private
  def trail_params
    params.require(:trail).permit(:name, :difficulty)
  end
end