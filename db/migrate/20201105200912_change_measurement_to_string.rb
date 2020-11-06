class ChangeMeasurementToString < ActiveRecord::Migration[6.0]
  def change
    change_column :doses, :measurement, :string, :limit =>25
  end
end
