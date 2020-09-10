class AddUserIdAndSongIdToUserSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :user_songs, :user_id, :integer
    add_column :user_songs, :song_id, :integer
  end
end
