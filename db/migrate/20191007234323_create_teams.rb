# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :nhlteamid
      t.string :name
      t.string :venue
      t.string :city
      t.string :division
      t.integer :divisionid
      t.string :conference
      t.integer :conferenceid
      t.integer :year

      t.timestamps
    end
  end
end
