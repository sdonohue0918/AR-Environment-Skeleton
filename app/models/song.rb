    
# # require 'activerecord'

class Song < ActiveRecord::Base
    
    has_many :moods, through: :song_moods

    
    def get_happy_song
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "3ebf2e591efc45f3bc9417525880e1d6")
         
        # song_recommendation = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['techno', 'dance', 'dancehall', 'edm', 'funk', 'happy', 'hip-hop', 'indie-pop','pop', 'power-pop','progressive-house','r-n-b', 'reggae'], market: 'US') #target_valence: 0.950, target_energy: 0.950, target_danceability: 0.950)
    
        recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['progressive_trance', 'dance','dancehall', 'happy'], target_valence: 0.950, target_energy: 0.950, target_danceability: 0.950)
    
        array = recommendations.tracks.first
        track = array.instance_variable_get('@uri')
        track_with_uri = track.split("spotify:track:")
        track_with_uri.drop(1)
        final = track_with_uri[1]
    
        happy_track = RSpotify::Track.find(final)
        happy_song_name = happy_track.name
        happy_artists = happy_track.artists
        happy_dance = happy_track.audio_features.danceability
        happy_valence = happy_track.audio_features.valence 
        happy_energy = happy_track.audio_features.energy 


        
    end
    
    def get_sad_song
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "3ebf2e591efc45f3bc9417525880e1d6")
    
        recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['goth', 'grunge', 'sad', 'iranian'], target_valence: 0.350, target_energy: 0.250, target_danceability: 0.300)
    
        array = recommendations.tracks.first
        track = array.instance_variable_get('@uri')
        track_with_uri = track.split("spotify:track:")
        track_with_uri.drop(1)
        final = track_with_uri[1]
    
        sad_track = RSpotify::Track.find(final)
        sad_song_name = sad_track.name
        sad_artists = sad_track.artists
        sad_dance = sad_track.audio_features.danceability 
        sad_valence = sad_track.audio_features.valence 
        sad_energy = sad_track.audio_features.energy 
    
    end
    
    def get_angry_song
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "3ebf2e591efc45f3bc9417525880e1d6")
        recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['metalcore', 'death-metal', 'drum-and-bass', 'industrial', 'heavy-metal', 'hardstyle'], target_valence: 0.150, target_energy: 0.850, target_danceability: 0.150)
    
        array = recommendations.tracks.first
        track = array.instance_variable_get('@uri')
        track_with_uri = track.split("spotify:track:")
        track_with_uri.drop(1)
        final = track_with_uri[1]
    
        angry_track = RSpotify::Track.find(final)
        angry_song_name = angry_track.name
        angry_artists = angry_track.artists
        angry_dance = angry_track.audio_features.danceability 
        angry_valence = angry_track.audio_features.valence 
        angry_energy = angry_track.audio_features.energy 
    
    
    end
    
    def get_chill_song
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "3ebf2e591efc45f3bc9417525880e1d6")
        recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: ['bossanova', 'chill', 'classical', 'ambient', 'minimal-techno', 'new-age'], target_valence: 0.750, target_energy: 0.350, target_danceability: 0.250)
    
        array = recommendations.tracks.first
        track = array.instance_variable_get('@uri')
        track_with_uri = track.split("spotify:track:")
        track_with_uri.drop(1)
        final = track_with_uri[1]
    
        chill_track = RSpotify::Track.find(final)
        chill_song_name = chill_track.name
        chill_artists = chill_track.artists
        chill_dance = chill_track.audio_features.danceability 
        chill_valence = chill_track.audio_features.valence 
        chill_energy = chill_track.audio_features.energy 
    
    
    
    
    
    end
end
    