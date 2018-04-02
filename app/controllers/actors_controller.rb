class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def create
    @actors = Actor.new(actors_params)
    @actors.save
    redirect_to index
  end

  def new
    @actors = Actor.new
  end

  private

  def actors_params
    params.require(:actors).permit(:image_url, :name, :birth_date, :birth_place, :alive, :death_date, :death_place)
  end
end
