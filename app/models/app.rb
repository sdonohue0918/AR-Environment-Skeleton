class App 

    attr_reader :mood, :song

    def run
        puts "Welcome to the Spotify Mood App! If you haven't already, please login into your Spotify account via the web player!"
        # sleep()
         mood_select
    end
    
    # private 
    
    
    def mood_select
        puts "What kind of mood are you in? Happy? Sad? Angry? Chill?"
        answer = gets.chomp
                if answer.downcase == "Happy"
                    puts "Here! See if you like this"
                    Song.new.get_happy_song
                elsif answer.downcase == "Sad"
                    Song.new.get_sad_song
                elsif answer.downcase == "Angry"
                    Song.new.get_angry_song 
                else answer.downcase == "Chill"
                    Song.new.get_chill_song
                end
            
        
    end
    
    

    
end
