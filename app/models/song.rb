    
# # require 'activerecord'

class Song < ActiveRecord::Base
    has_many :users, through: :user_songs
    has_many :moods, through: :song_moods

    # SONG = get_song
    def get_song
        #access the api through rspotify 
        #has to get a song that matches the mood
        #song returned at last value
        RSpotify.authenticate("c9c915b881f6485dab1302b8155aa887", "f6c044064bd34c4499a1b243688f416f")
        # me = RSpotify::User.find('sdonohue0918')

        recommendations = RSpotify::Recommendations.generate(limit: 1, seed_tracks: ['0c6xIDDpzE81m2q797ordA'], market:'US', target_valence: 0.950)

        trackrecs = recommendations.tracks

        p trackrecs #find the api here that gets audio features
                    #find the api here that gets artist features (name, song "name") 

    end

     def get_song_attributes   
        #gonna go into song attributes, get specific values------>enumerate
        #get the values that we need and store them as hash (k,v) pairs
            #danceability
            #energy
            #valence
            #liveness
            #...
    end


    # def can_be_created_in_a_block(args = { title: "Home Alone", release_date: 1990 })
    #         Movie.create do |m|
    #     m.title = args[:title]
    #     m.release_date = args[:release_date]
    #      m.save
    #     end
    # end

    
    
    


end








