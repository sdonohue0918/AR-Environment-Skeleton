class DeleteMoodsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :moods
  end
end
