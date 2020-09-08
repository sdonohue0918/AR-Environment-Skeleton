



class Cli
    def startup
        prompt = TTY::Prompt.new
        system ("clear")
        welcome = prompt.select("Welcome to the Spotify Mood App!") do |menu|
            menu.choice "sign-up"
            menu.choice "log-in"
            menu.choice "exit"
        end

        if welcome == "log-in"
            login_menu = prompt.ask("Please enter your username:") {|p| p.validate :username}
            user_password = prompt.mask("Please enter your password:") {|p| p.validate :password}
            #need to make sure this is getting values from User for username and password

            elsif
                welcome == "sign-up"
                sign_in
            elsif
                welcome == "exit"
                puts "goodbye"
                #see what we can do here"
        end

        if login_menu && user_password 
            mood_ask = prompt.ask("How are you feeling?")
            
            if mood_ask == "sad"
                Song.new.



    end
    
    

end
    
new_cli = Cli.new
new_cli.startup