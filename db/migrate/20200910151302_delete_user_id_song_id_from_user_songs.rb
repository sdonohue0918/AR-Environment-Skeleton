class DeleteUserIdSongIdFromUserSongs < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_songs, :song_id, :integer
    remove_column :user_songs, :user_id, :integer
  end
end
