class User < ActiveRecord::Base
    
    has_many :moods, through: :songs, through: :song_moods
    has_many :songs, through: :user_songs  

end