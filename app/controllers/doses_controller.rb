class DosesController < ApplicationController
  before_action :set_cocktail

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)

    if @dose.valid?
      redirect_to cocktail_path(@cocktail.id), notice: 'Rejoyce! Your cocktail was added successfully!'
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:doses).permit(:description, :cocktail_id, :ingredient_id)
  end
  
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
