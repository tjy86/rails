class MovieTable < ActiveRecord::Migration
  def change
  	create_table :movies do |t|
  		t.string :name
  		t.string :rating
  		t.decimal :gross
  		t.timestamps
		end
  end
end
