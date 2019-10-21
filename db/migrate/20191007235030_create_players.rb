# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.integer :nhlplayer_id
      t.integer :nhlteam_id
      t.integer :jersey_number
      t.string :position_type
      t.string :position_name
      t.string :full_name

      t.timestamps
    end
  end
end
