class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show update destroy]
  def index
    @cocktails = Cocktail.order(name: :asc)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail.update(cocktail_params)

    redirect_to cocktail_path(@cocktail), notice: 'Cocktail recipe updated successfully :D'
  end
  
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)

    if @cocktail.valid?
      redirect_to cocktail_path(@cocktail), notice: "<small>Rejoyce! <strong>#{@cocktail.name}</strong> was added to the list.</small>"
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy

    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :virgin, :vegan, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
