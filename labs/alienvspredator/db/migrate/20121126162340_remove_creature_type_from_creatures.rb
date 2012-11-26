class RemoveCreatureTypeFromCreatures < ActiveRecord::Migration
  def up
    remove_column :creatures, :creature_type
  end

  def down
    add_column :creatures, :creature_type, :integer
  end
end
