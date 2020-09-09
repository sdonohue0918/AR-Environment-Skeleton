class AddMoodColumnToSongsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :mood, :string
  end
end
