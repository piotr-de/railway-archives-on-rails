class CreateEncounters < ActiveRecord::Migration[6.0]
  def change
    create_table :encounters do |t|
      t.date :date
      t.text :description
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
