class CreateDepilations < ActiveRecord::Migration[7.0]
  def change
    create_table :depilations do |t|
      t.string :title, null: false
      t.string :price, null: false
    end
    add_index :depilations, :title, unique: true
  end
end
