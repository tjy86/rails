class Addtables < ActiveRecord::Migration
  def change
  	create_table :movies do |t|
  		t.string :title
  		t.string :rated
  		t.integer :director_id
  		t.timestamps
  	end
  	create_table :directors do |t|
  		t.string :name
  		t.timestamps
  	end
  	create_table :genres do |t|
  		t.string :type
  		t.timestamps
  	end
  	create_table :genres_movies ,:key => false do |t|
  		t.string :movie_id
  		t.string :genre_id
  	end
  end
end
