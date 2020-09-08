class AddSongMoodTable < ActiveRecord::Migration[6.0]
  def change
    create_table :song_moods do |t|
      t.integer :song_id
      t.integer :mood_id
    end
  end
end
