class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.int :playerid
      t.int :teamid
      t.int :jerseynumber
      t.string :positiontype
      t.string :positionname
      t.string :fullname
      t.int :playerid

      t.timestamps
    end
  end
end
