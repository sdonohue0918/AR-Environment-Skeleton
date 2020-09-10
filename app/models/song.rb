require 'rspotify'
  


class Song < ActiveRecord::Base
    
    has_many :moods, through: :song_moods

    
    def get_happy_song
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "3ebf2e591efc45f3bc9417525880e1d6")
         
        recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['progressive_trance', 'dance','dancehall', 'happy'], target_valence: 0.950, target_energy: 0.950, target_danceability: 0.950)
    
        array = recommendations.tracks.first
        track = array.instance_variable_get('@uri')
        track_url = array.instance_variable_get('@external_urls')
        track_with_uri = track.split("spotify:track:")
        track_with_uri.drop(1)
        final = track_with_uri[1]
    
        happy_track = RSpotify::Track.find(final)
        happy_song_name = happy_track.name
        happy_artists = happy_track.artists
        happy_song_uri = track
        happy_dance = happy_track.audio_features.danceability
        happy_valence = happy_track.audio_features.valence 
        happy_energy = happy_track.audio_features.energy
        happy_song_url = track_url.values

        new_happy_song = Song.create do |t|
            t.name = happy_song_name
            t.artist = happy_artists
            t.song_uri = happy_song_uri
            t.valence = happy_valence
            t.dance_ = happy_dance
            t.energy = happy_energy
            t.song_url = happy_song_url
            t.mood = "happy"
        end

        p new_happy_song.name
        p new_happy_song.song_url
    end
    
    def get_sad_song
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "3ebf2e591efc45f3bc9417525880e1d6")
    
        recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['goth', 'grunge', 'sad', 'iranian'], target_valence: 0.350, target_energy: 0.250, target_danceability: 0.300)
    
        array = recommendations.tracks.first
        track = array.instance_variable_get('@uri')
        track_url = array.instance_variable_get('@external_urls')
        track_with_uri = track.split("spotify:track:")
        track_with_uri.drop(1)
        final = track_with_uri[1]
    
        sad_track = RSpotify::Track.find(final)
        sad_song_name = sad_track.name
        sad_song_uri = track
        sad_artists = sad_track.artists
        sad_dance = sad_track.audio_features.danceability 
        sad_valence = sad_track.audio_features.valence 
        sad_energy = sad_track.audio_features.energy
        sad_song_url = track_url.values

        new_sad_song = Song.create do |t|
            t.name = sad_song_name
            t.artist = sad_artists
            t.song_uri = sad_song_uri
            t.valence = sad_valence
            t.dance_ = sad_dance
            t.energy = sad_energy
            t.song_url = sad_song_url
            t.mood = "sad"
        end
        
    end
    
    def get_angry_song
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "3ebf2e591efc45f3bc9417525880e1d6")
        recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['metalcore', 'death-metal', 'industrial', 'heavy-metal', 'hardstyle'], target_valence: 0.150, target_energy: 0.850, target_danceability: 0.150)
    
        array = recommendations.tracks.first
        track = array.instance_variable_get('@uri')
        track_url = array.instance_variable_get('@external_urls')
        track_with_uri = track.split("spotify:track:")
        track_with_uri.drop(1)
        final = track_with_uri[1]
    
        angry_track = RSpotify::Track.find(final)
        angry_song_name = angry_track.name
        angry_song_uri = track
        angry_artists = angry_track.artists
        angry_dance = angry_track.audio_features.danceability 
        angry_valence = angry_track.audio_features.valence 
        angry_energy = angry_track.audio_features.energy
        angry_song_url = track_url.values 

        new_angry_song = Song.create do |t|
            t.name = angry_song_name
            t.artist = angry_artists
            t.song_uri = angry_song_uri
            t.valence = angry_valence
            t.dance_ = angry_dance
            t.energy = angry_energy
            t.song_url = angry_song_url
            t.mood = "angry"
        end
    end
    
    def get_chill_song
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "3ebf2e591efc45f3bc9417525880e1d6")
        recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['bossanova', 'chill', 'classical', 'ambient', 'minimal-techno'], target_valence: 0.750, target_energy: 0.350, target_danceability: 0.250)
    
        array = recommendations.tracks.first
        track = array.instance_variable_get('@uri')
        track_url = array.instance_variable_get('@external_urls')
        track_with_uri = track.split("spotify:track:")
        track_with_uri.drop(1)
        final = track_with_uri[1]
    
        chill_track = RSpotify::Track.find(final)
        chill_song_name = chill_track.name
        chill_song_uri = track
        chill_artists = chill_track.artists
        chill_dance = chill_track.audio_features.danceability 
        chill_valence = chill_track.audio_features.valence 
        chill_energy = chill_track.audio_features.energy
        chill_energy = track_url.values

        new_chill_song = Song.create do |t|
            t.name = chill_song_name
            t.artist = chill_artists
            t.song_uri = chill_song_uri
            t.valence = chill_valence
            t.dance_ = chill_dance
            t.energy = chill_energy
            t.song_url = chill_song_url
            t.mood = "chill"
        end
    end



    def song_update_attribute(song)
        song_change = Song.find_by(name: song.name)
        song_change.update
        song_change.save
        
    end


    def song_delete_from_db(song)
        song_delete = Song.find_by(name: song.name)
        song_delete.destroy
    end
end
    