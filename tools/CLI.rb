
require 'tty-prompt'
# require_relative '..app/models/user.rb'
#  require 'song'
#  require 'mood'
# require_relative '..app/models/song_mood.rb'
# require_relative '..app/models/user_song.rb'




class Cli





    def startup
        moods = ["Sad", "Happy", "Angry", "Chill"]
        prompt = TTY::Prompt.new
        system ("clear")
        welcome = prompt.select("Welcome to the Spotify Mood App!") do |menu|
            menu.choice "lets get started"
            menu.choice "exit"

            welcome == "lets get started"
            mood_ask = prompt.select("How are you feeling?", %w(happy mad sad))
            if mood_ask == "sad"
                Song.create
            end
        end



    end
    
    

end
    
new_cli = Cli.new
new_cli.startup