# frozen_string_literal: true

class CreateManicures < ActiveRecord::Migration[7.0]
  def change
    create_table :manicures do |t|
      t.string :title, null: false
      t.integer :price, null: false
    end
    add_index :manicures, :title, unique: true
  end
end
