# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :nhlteam_id
      t.string :name
      t.string :venue
      t.string :city
      t.string :division
      t.integer :division_id
      t.string :conference
      t.integer :conference_id
      t.integer :year

      t.timestamps
    end
  end
end
