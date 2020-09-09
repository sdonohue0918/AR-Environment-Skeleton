require 'pry'
require 'rspotify'





####seeds




####moods
angry = Mood.create(name: "angry", valence: 0..0.200, is_danceable: false, high_valence: false, low_valence: true, high_energy: true, low_energy: false)

sad = Mood.create(name: "sad", valence: 0.300..0.450, is_danceable: false, high_valence: false, low_valence: true, high_energy: false, low_energy: true)

happy = Mood.create(name: "happy", valence: 0.700..1.00, is_danceable: true, high_valence: true, low_valence: false, high_energy: true, low_energy: false)

chill = Mood.create(name: "chill", valence: 0.500..0.600, is_danceable: false, high_valence: true, low_valence: false, high_energy: false, low_energy: true)




song1 = Song.create(name: "sorry", artist: "Justin Bieber", song_uri: nil, valence: 0.950, dance_: 0.750, loudness: -10, energy: 0.800)

song_mood1 = SongMood.create(song_id: user1.id, mood_id: mood1.id)


















