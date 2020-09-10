class DeleteSongMoodsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :song_moods
  end
end
