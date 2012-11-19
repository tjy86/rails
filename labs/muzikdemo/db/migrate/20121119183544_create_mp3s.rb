class CreateMp3s < ActiveRecord::Migration
  def change
    create_table :mp3s do |t|
      t.string :name
      t.string :song
      t.string :youtube

      t.timestamps
    end
  end
end
