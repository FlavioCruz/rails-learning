class PlanetsController < ApplicationController
  def index
      @planets = Planet.all
  end

  def new
    @planet = Planet.new()
  end

  def edit
    @planet = Planet.find(params[:id])

    if @planet.update(planet_params)
      redirect_to @planet
    else
      render 'edit'
    end
  end

  def create
    @planet = Planet.new(planet_params)

    if @planet.save
      redirect_to @planet
    else
      render 'new'
    end
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def destroy
    Planet.destroy(params[:id])
    redirect_back(fallback_location: root_path)
  end

  # Private methods beyond this line
  private

  def planet_params
    params.require(:planet).permit(:name, :kind)
  end
end
