require 'rspotify'

class User < ActiveRecord::Base
    has_many :user_songs
    has_many :songs, through: :user_songs


end

def view_songs
    self.songs


end


def view_saved_song_names
    self.song.name


end



def change_username(name)
    self.update(username: name)
    

end

def view_saved_songs
    self.user_songs


end