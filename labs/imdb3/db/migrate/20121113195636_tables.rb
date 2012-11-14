class Tables < ActiveRecord::Migration
  def change
  	create_table :movies do |t|
  		t.string :name
  		t.integer :director_id
  		t.integer :studio_id
  		t.timestamps
  	end
  	create_table :directors do |t|
  		t.string :name
  		t.timestamps
  	end
  	create_table :studios do |t|
  		t.string :name
  		t.timestamps
  	end
  	create_table :actors do |t|
  		t.string :name
  		t.timestamps
  	end
  	create	_table :actors_movies, :id => false do |t|
  		t.integer :actor_id
  		t.integer :movie_id
  	end
  end
end
