class AddSongTable < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :song_uri
      t.float :valence
      t.float :dance_
      # t.float :loudness-----will remove columns in next migration
      t.float :energy
      # t.float :liveness ----will remove columns in next migration because they are not helpful
      # t.float :tempo -----
    end
      
  end
end
