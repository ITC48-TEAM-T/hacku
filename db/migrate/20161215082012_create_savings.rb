class CreateSavings < ActiveRecord::Migration[5.0]
  def change
    create_table :savings do |t|
      t.integer :count, default: 0
      t.timestamps
    end
  end
end
