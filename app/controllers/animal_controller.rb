class AnimalController < ApplicationController
  def index
      @animals = Animal.all
  end

  def show
      @animal = Animal.find(params[:id])
  end

  def new
      @animal = Animal.new
  end

  def create
      @animal = Animal.create(animal_params)
      if @animal.valid?
        redirect_to animals_path
      else
        redirect_to new_animal_path
      end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
      @animal = Animal.find(params[:id])
      @animal.update(animal_params)
      if @animal.valid?
        redirect_to animal_path(@animal)
      else
        redirect_to edit_animal_path(@animal)
      end
  end
  
  def destroy
      @animal = Animal.find(params[:id])
      if @animal.destroy
        redirect_to animals_path
      else
        redirect_to animal_path(@animal)
      end
  end



  private
  def animal_params
    params.require(:animal).permit(:name, :latin_name, :kingdom)

  end
end
