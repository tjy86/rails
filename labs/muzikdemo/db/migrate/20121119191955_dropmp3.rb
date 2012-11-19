class Dropmp3 < ActiveRecord::Migration
  def change
  	drop_table :mp3s
  end
end
