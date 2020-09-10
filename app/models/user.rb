require 'rspotify'

class User < ActiveRecord::Base
    has_many :user_songs
    has_many :songs, through: :user_songs




    def view_songs
        Song.all


    end


    def view_saved_song_names
        self.songs


    end



    def change_username(name)
        self.update(username: name)
    

    end

    def delete_user
        self.destroy!
    end

end