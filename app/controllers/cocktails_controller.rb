class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.order(name: :asc)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)

    if @cocktail.valid?
      redirect_to cocktail_path(@cocktail), notice: "Rejoyce! <strong>#{@cocktail.name}</strong> was added to the list."
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :virgin)
  end
end
