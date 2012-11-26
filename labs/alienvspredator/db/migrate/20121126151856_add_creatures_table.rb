class AddCreaturesTable < ActiveRecord::Migration
  def change
  	create_table :creatures do |t|
  		t.string :name
  		t.string :weapon
  		t.string :password_digest
  		t.integer :creature_type
  		t.timestamps
		end
  end
end
