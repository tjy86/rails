class AddCreatureTypeIdToCreatures < ActiveRecord::Migration
  def change
    add_column :creatures, :creature_type_id, :integer
  end
end
