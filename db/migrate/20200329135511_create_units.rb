class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :serial_no
      t.string :operator
      t.references :class_code, null: false, foreign_key: true

      t.timestamps
    end
  end
end
