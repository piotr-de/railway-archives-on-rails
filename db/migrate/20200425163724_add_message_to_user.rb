class AddMessageToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :message, :string
  end
end
