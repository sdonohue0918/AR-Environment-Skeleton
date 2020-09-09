    
# # require 'activerecord'

class Song < ActiveRecord::Base
    
    has_many :moods, through: :song_moods

    
    def get_song
        
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "f6c044064bd34c4499a1b243688f416f")
        

        recommendations = RSpotify::Recommendations.generate(limit: 1, seed_tracks: ['0c6xIDDpzE81m2q797ordA'], market:'US', target_valence: 0.950)

        trackrecs = recommendations.tracks

        p trackrecs  

    end

     def get_song_attributes   
       
    end


    
    
    
    


end








