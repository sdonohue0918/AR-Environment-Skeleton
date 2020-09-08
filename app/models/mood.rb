class Mood < ActiveRecord::Base
    has_many :users, through: :song_moods
    has_many :songs, through: :song_moods


    #Angry---->Valence 0.200, Danceability 0.050, ...
    #Sad---->Valence 0.400, Danceability 0.050....

    #Happy---->Valence 0.950, Danceability 0.800...

    #Relaxed---->Valence 0.750, Danceability 0.300...

    #Focus---->Valence 0.760, Danceability 0.150


    #[] case song.valence
        #when 0..0.50 then song.mood.low_valence = true && song.mood.high_valence = false
        #when 0.55..1.00 then song.mood.high_valence = true
    #end
    
     #   case song.dance_
            #when 0..0.50 then song.mood.is_danceable = false
            #when 0.55..1.00 then song.mood.is_danceable = true
        #end

        #case song.loudness 
            #when -60..-10 then song.mood.is_loud = true
            #when -9..0 then song.mood.is_loud = false
        #end

        #case song.energy
            #when 0..0.500 then song.mood.high_energy = false && song.mood.low_energy = true
            #when 0.505..1 then song.mood.high_energy = true && song.mood.low_energy = false
        #end

       

end