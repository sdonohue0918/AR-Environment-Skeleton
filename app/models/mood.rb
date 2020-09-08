class Mood < ActiveRecord::Base
    has_many :users, through: :song_moods
    has_many :songs, through: :song_moods

end