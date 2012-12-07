class Stocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.timestamps
    end
    create_table :prices do |t|
      t.decimal :num
      t.integer :stock_id
      t.timestamps
    end
  end
end
