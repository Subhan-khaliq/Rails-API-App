# frozen_string_literal: true

class CreateHobbies < ActiveRecord::Migration[7.0]
  def change
    create_table :hobbies do |t|
      t.references :user, null: false, foreign_key: true
      t.string :hobbies
      t.integer :likes

      t.timestamps
    end
  end
end
