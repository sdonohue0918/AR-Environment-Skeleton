class SongMood < ActiveRecord::Base
    belongs_to :song
    belongs_to :mood

    puts "testing "

end