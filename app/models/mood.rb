class Mood < ActiveRecord::Base
    belongs_to :user, through: :song_mood
    belongs_to :song, through: :song_mood



end