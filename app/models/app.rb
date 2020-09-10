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
                elsif answer == "Sad"
                    Song.new.get_sad_song
                elsif answer == "Angry"
                    Song.new.get_angry_song 
                else answer == "Chill"
                    Song.new.get_chill_song
                end
            
        
    end
    
    

    
end
