class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.decimal :gross
      t.string :tickets_sold
      t.date :release_date

      t.timestamps
    end
  end
end
