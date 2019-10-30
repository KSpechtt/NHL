class AddNumberToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :number, :integer
  end
end
