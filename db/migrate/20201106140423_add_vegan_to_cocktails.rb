class AddVeganToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :vegan, :boolean, :default => false
  end
end
