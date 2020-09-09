class AddUserTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :mood
      t.string :user_uri
    end
  end
end


#delete table for user