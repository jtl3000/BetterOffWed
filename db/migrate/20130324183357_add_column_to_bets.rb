class AddColumnToBets < ActiveRecord::Migration
  def change
    add_column :bets, :EngagementDate, :date
    add_column :bets, :OrigWeddingDate, :date
    add_column :bets, :Postponement, :string
    add_column :bets, :NewWeddingDate, :date
    add_column :bets, :WillDivorce, :string
    add_column :bets, :DivorceDate, :date
    add_column :bets, :OneDead, :string
    add_column :bets, :WhoKillsWho, :string
  end
end
