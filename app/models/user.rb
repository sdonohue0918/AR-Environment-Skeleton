class User < ActiveRecord
    
    has_many :moods
    has_many :songs, through: :user_songs  

end