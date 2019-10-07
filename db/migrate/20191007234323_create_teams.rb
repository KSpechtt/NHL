class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.int :teamid
      t.string :name
      t.string :venue
      t.string :city
      t.string :division
      t.int :divisionid
      t.string :confrence
      t.int :confrenceid
      t.int :year

      t.timestamps
    end
  end
end
