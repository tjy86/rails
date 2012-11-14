class AddAptIdToTenantTable < ActiveRecord::Migration
  def change
  	add_column :tenants, :apt_id, :integer
  end
end
