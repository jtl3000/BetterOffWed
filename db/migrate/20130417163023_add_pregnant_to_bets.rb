class AddPregnantToBets < ActiveRecord::Migration
  def change
    add_column :bets, :pregnant, :string
  end
end
