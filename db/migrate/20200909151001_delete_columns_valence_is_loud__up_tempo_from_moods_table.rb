class DeleteColumnsValenceIsLoudUpTempoFromMoodsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :moods, :valence, :float
    remove_column :moods, :is_loud, :boolean
    remove_column :moods, :up_tempo, :boolean
  end
end
