class Api::V2::SuperheroesController < ApplicationController

  def show
    @superhero = Superhero.find_by(id: params[:id])
  end

  def index
    @superheroes = Superhero.all
  end

  def update
    @superhero = Superhero.update(
    superhero_name: params[:superhero_name],
    superhero_power: params[:superhero_power]
    )
    render 'index'
  end

  def destroy
    @superhero = Superhero.find_by(id: params[:id])
    @superhero.destroy
  end

end
