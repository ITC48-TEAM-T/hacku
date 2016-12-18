class AddPlayNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :player_name, :string
  end
end
