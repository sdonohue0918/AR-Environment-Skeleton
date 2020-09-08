require 'rspotify'


class Song < ActiveRecord::Base
    has_many :users, through: :user_songs
    has_many :moods, through: :song_moods

    $song = get_song
    def get_song
        #access the api through rspotify 
        #has to get a song that matches the mood
        #song returned at last value
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




    def assign_song_attributes(args = hash_attributes)
            Song.create do |s| 
            s.valence = args[:valence]
            s.dance_ = args[:dance_]
            s.loudness = args[:loudness]
            s.energy = args[:energy]
            s.save
    
    
    end
    
    
    
    def get_mood($song)
        #so here with this method, we are comparing the songs_attributes with the mood classes methods that will check against the values and determine whether or not a song has a given mood. 
    end



end