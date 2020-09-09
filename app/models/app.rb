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
        answer = gets.chomp
            if answer == "Happy"
                Song.new.get_happy_song
            if answer == "Sad"
                Song.new.get_sad_song
            if answer == "Angry"
                Song.new.get_angry_song 
            if answer == "Chill"
                Song.new.get_chill_song
            end
        end
    end
    end
    
    end

    
end
