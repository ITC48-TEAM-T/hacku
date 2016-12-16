class CreateWorries < ActiveRecord::Migration[5.0]
  def change
    create_table :worries do |t|
      t.integer :count, default: 0
      t.timestamps
    end
  end
end
