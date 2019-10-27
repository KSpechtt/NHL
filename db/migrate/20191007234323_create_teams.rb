# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.string :name
      t.string :venue
      t.string :city
      t.string :division_name
      t.string :conference_name
      t.integer :year

      # t.references :conference, null: false, foreign_key: true
      # t.references :division, null: false, foreign_key: true

      t.timestamps
    end
  end
end
