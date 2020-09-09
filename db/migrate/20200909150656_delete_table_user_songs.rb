class DeleteTableUserSongs < ActiveRecord::Migration[6.0]
  def change
    drop_table :user_songs
  end
end
