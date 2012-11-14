class AptidToApartmentid < ActiveRecord::Migration
  def change
  	remove_column :tenants, :apt_id
  	add_column :tenants, :apartment_id, :integer
  end
end
