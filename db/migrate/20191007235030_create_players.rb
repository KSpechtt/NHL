# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.integer :nhlplayerid
      t.integer :nhlteamid
      t.integer :jerseynumber
      t.string :positiontype
      t.string :positionname
      t.string :fullname

      t.timestamps
    end
  end
end
