class CreatePedicures < ActiveRecord::Migration[7.0]
  def change
    create_table :pedicures do |t|
      t.string :title, null: false
      t.integer :price, null: false
    end
    add_index :pedicures, :title, unique: true
  end
end
