class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, default: 'ゆうり'
      t.integer :incarnation, default: 0
      t.timestamps
    end
  end
end
