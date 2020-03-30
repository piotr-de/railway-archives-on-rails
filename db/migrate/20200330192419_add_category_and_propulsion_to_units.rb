class AddCategoryAndPropulsionToUnits < ActiveRecord::Migration[6.0]
  def change
    add_column :units, :category, :string
    add_column :units, :propulsion, :string
  end
end
