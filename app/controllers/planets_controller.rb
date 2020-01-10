class PlanetsController < ApplicationController
    def index
        @planets = Planet.all
    end

    def new
    end

    def create
        @planet = Planet.new(planet_params)

        @planet.save
        redirect_to @planet
    end

    private
  def planet_params
    params.require(:planet).permit(:title, :text)
  end

  def show
    @planet = Planet.find(params[:id])
  end
end
