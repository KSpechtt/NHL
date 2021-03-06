# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.integer :player_id
      t.integer :jersey_number
      t.string :position_type
      t.string :position_name
      t.string :full_name
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
