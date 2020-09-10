class Mood < ActiveRecord::Base
    has_many :songs, through: :song_moods

    def get_mood_attributes(song)
        case song.valence
            when 0..0.50 then song.mood.low_valence = true && song.mood.high_valence = false
            when 0.55..1.00 then song.mood.high_valence = true
        end
    
       case song.dance_
            when 0..0.50 then song.mood.is_danceable = false
            when 0.55..1.00 then song.mood.is_danceable = true
        end

        case song.energy
            when 0..0.500 then song.mood.high_energy = false && song.mood.low_energy = true
            when 0.505..1 then song.mood.high_energy = true && song.mood.low_energy = false
        end

    end

    def what_kind_of_mood(song)

        if song.mood.low_valence == true && song.mood.is_danceable == false && song.mood.low_energy == true
            song.mood = sad.name
        elsif song.mood.low_valence == true && song.mood.is_danceable == false && song.mood.low_energy == false
            song.mood = angry.name
        elsif song.mood.low_valence == false && song.mood.is_danceable == true && song.mood.low_energy == false
            song.mood = happy.name
        else song.mood.low_valence == false && song.mood.is_danceable == true && song.mood.low_energy == true
            song.mood = chill.name
        end
    end



end





# angry = Mood.create(name: "angry", valence: 0..0.200, is_danceable: false, high_valence: false, low_valence: true, high_energy: true, low_energy: false)

# sad = Mood.create(name: "sad", valence: 0.300..0.450, is_danceable: false, high_valence: false, low_valence: true, high_energy: false, low_energy: true)

# happy = Mood.create(name: "happy", valence: 0.700..1.00, is_danceable: true, high_valence: true, low_valence: false, high_energy: true, low_energy: false)

# chill = Mood.create(name: "chill", valence: 0.500..0.600, is_danceable: false, high_valence: true, low_valence: false, high_energy: false, low_energy: true)
