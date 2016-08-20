class Api::V1::SuperheroesController < ApplicationController
  def show
    @superhero = Superhero.find_by(id: params[:id])
  end

  def index
    @superheroes = Superhero.all
  end

  def create
    @superhero = Superhero.create(
      superhero_name: params[:superhero_name],
      superhero_power: params[:superhero_power]
      )
    render 'show'
  end

  def update
    @superhero = Superhero.find_by(:id => params[:id])
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
