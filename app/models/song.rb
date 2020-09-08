class Song < ActiveRecord::Base
    has_many :users, through: :user_songs
    has_many :moods, through: :song_moods



end