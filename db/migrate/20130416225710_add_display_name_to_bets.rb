class AddDisplayNameToBets < ActiveRecord::Migration
  def change
    add_column :bets, :displayname, :string
  end
end
