require 'pry'

Mood.destroy_all

Song.destroy_all

SongMood.destroy_all






####seedss

angry = Mood.create(name: "angry", is_danceable: false, high_valence: false, low_valence: true, high_energy: true, low_energy: false)

sad = Mood.create(name: "sad", is_danceable: false, high_valence: false, low_valence: true, high_energy: false, low_energy: true)

happy = Mood.create(name: "happy", is_danceable: true, high_valence: true, low_valence: false, high_energy: true, low_energy: false)

chill = Mood.create(name: "chill",  is_danceable: false, high_valence: true, low_valence: false, high_energy: false, low_energy: true)

song1 = Song.create(name: "sorry", artist: "Justin Bieber", song_uri: nil, valence: 0.950, dance_: 0.750,  energy: 0.800)

song_mood1 = SongMood.create(song_id: song1.id, mood_id: happy.id)























