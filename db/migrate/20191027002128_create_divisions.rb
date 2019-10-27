# frozen_string_literal: true

class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :division_name
      t.integer :division_id

      t.timestamps
    end
  end
end
