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
      redirect_to creatures_path
    else
    end
  end

  def show
    @creature = Creature.find_by_id(params[:id])
  end

  private
  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end
