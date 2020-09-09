class App 

    attr_reader :mood, :song




    def run
        "Welcome to the Spotify Mood App!"
        sleep(5)
        mood_select
    end
    
    private 
    
    
    def mood_select
        "What kind of mood are you in? Happy? Sad? Angry? Chill?"
        answer = gets.chomp.downcase
            if answer == "Happy"
                happy_song = Song.create(name: nil, artist: nil, ) || Song.create
            if answer == "Sad"
                sad_song = Song.create || Song.create
            if answer == "Angry"
                angry_song = Song.create
            if answer == "Chill"
            end
        end
    end
    end
    
    end
end
