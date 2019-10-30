class AddTeamToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :team, :string
  end
end
