class AddMoodTable < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.string :name
      t.float :valence
      t.boolean :is_danceable
      t.boolean :high_valence
      t.boolean :low_valence
      t.boolean :is_loud
      t.boolean :high_energy
      t.boolean :low_energy
      t.boolean :up_tempo
    end
  end
end
