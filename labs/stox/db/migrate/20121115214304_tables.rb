class Tables < ActiveRecord::Migration
  def change
  	create_table :stocks do |t|
  		t.string :symbol
  		t.decimal :price
  		t.timestamps
  	end
  end
end
