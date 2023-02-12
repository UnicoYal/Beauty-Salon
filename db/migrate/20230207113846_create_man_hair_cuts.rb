# frozen_string_literal: true

class CreateManHairCuts < ActiveRecord::Migration[7.0]
  def change
    create_table :man_hair_cuts do |t|
      t.string :title, null: false
      t.integer :price, null: false
    end
    add_index :man_hair_cuts, :title, unique: true
  end
end
