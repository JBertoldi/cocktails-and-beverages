class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :measurement, :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  # validates :cocktail, uniqueness: { message: 'Ingredient already added to list' }
end
