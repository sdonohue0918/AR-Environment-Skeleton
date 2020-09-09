class DeleteColumnsTempoLivenessLoudnessInSongsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :songs, :loudness, :float
    remove_column :songs, :liveness, :float
    remove_column :songs, :tempo, :float
  end
end
