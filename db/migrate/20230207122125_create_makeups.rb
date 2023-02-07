class CreateMakeups < ActiveRecord::Migration[7.0]
  def change
    create_table :makeups do |t|
      t.string :title, null: false
      t.string :price, null: false
    end
    add_index :makeups, :title, unique: true
  end
end
