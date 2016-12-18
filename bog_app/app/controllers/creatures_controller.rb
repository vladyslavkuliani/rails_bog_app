class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(creature)
    else
      redirect_to new_creature_path
    end
  end

  def show
    @creature = Creature.find_by(id: params[:id])
  end

  private
  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end
