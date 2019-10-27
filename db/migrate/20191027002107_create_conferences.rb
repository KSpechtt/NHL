# frozen_string_literal: true

class CreateConferences < ActiveRecord::Migration[6.0]
  def change
    create_table :conferences do |t|
      t.string :conference_name
      t.integer :conference_id

      t.timestamps
    end
  end
end
