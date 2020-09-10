class AddUserAndSongColumnsToUserSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :user_songs, :user, :string
    add_column :user_songs, :song, :string
  end
end
