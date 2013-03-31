class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.string :displayname
      t.decimal :amount

      t.timestamps
    end
  end
end
