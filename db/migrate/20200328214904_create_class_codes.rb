class CreateClassCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :class_codes do |t|
      t.string :name
      t.string :category
      t.string :power

      t.timestamps
    end
  end
end
