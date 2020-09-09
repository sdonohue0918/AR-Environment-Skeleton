class App 

    attr_reader :mood, :song




    def run
        puts "Welcome to the Spotify Mood App!"
        # sleep()
         mood_select
    end
    
    # private 
    
    
    def mood_select
        puts "What kind of mood are you in? Happy? Sad? Angry? Chill?"
        answer = gets.chomp.downcase
            if answer == "Happy"
                happy_song = Fetcher.new.happy_song
            if answer == "Sad"
                sad_song = Fetcher.new.sad_song
            if answer == "Angry"
                angry_song = 
            if answer == "Chill"
            end
        end
    end
    end
    
    end

    
end
