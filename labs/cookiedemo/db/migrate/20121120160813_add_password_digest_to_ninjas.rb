class AddPasswordDigestToNinjas < ActiveRecord::Migration
  def change
  	add_column :ninjas, :password_digest, :string
  end
end
