class AddColumnToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :bet_id, :integer
  end
end
