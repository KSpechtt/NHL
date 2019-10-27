class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.integer :division_id
      t.string :name

      t.timestamps
    end
  end
end
