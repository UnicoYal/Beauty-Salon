class CreateWomenHairCuts < ActiveRecord::Migration[7.0]
  def change
    create_table :women_hair_cuts do |t|
      t.string :title, null: false
      t.string :price_lower_ten, null: false
      t.string :price_ten_to_twenty
      t.string :price_upper_twenty
    end
    add_index :women_hair_cuts, :title, unique: true
  end
end
