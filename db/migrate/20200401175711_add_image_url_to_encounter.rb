class AddImageUrlToEncounter < ActiveRecord::Migration[6.0]
  def change
    add_column :encounters, :image_url, :string
  end
end
