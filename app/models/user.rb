class User < ActiveRecord::Base
    
    has_many :moods, through: :song_moods #through: song, is probably being overwritten but its causing an issue
    has_many :songs, through: :user_songs  




    def 

end