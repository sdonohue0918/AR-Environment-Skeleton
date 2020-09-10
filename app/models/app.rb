class App 

    attr_reader :user, :song, :user_song

    def run
        puts "Welcome to the Spotify Mood App! If you haven't already, please login into your Spotify account via the web player!"
        # sleep()
        Song.destroy_all
        
        login_or_signup
    end
    

    def login_or_signup
        puts "Please enter your login information, or sign up in order to use the app. (login/sign-up)"
        answer = gets.chomp
        if answer == "login"
            puts "please enter your username"
            username = gets.chomp
            User.find_by(username: username)
        else answer == "sign-up"
            puts "please enter the username you would like to use"
            new_user = gets.chomp
            person = User.find_or_create_by(username: new_user)
                puts User.where(username: new_user).find_by(id: person.id)
                puts "REMEMBER YOUR ID...FOR IT IS PRECIOUS"
                puts "REMEMBER YOUR ID...FOR IT IS PRECIOUS"
                puts "REMEMBER YOUR ID...FOR IT IS PRECIOUS"
        end

        mood_select
    end
    
    
    def mood_select
        puts "What kind of mood are you in? Happy? Sad? Angry? Chill?"
        answer = gets.chomp
                if answer == "Happy"
                    puts "Here! See if you like this"
                    Song.new.get_happy_song
                elsif answer == "Sad"
                    puts "Here! See if you like this"
                    Song.new.get_sad_song
                elsif answer == "Angry"
                    puts "Here! See if you like this"
                    Song.new.get_angry_song 
                elsif answer == "Chill"
                    puts "Here! See if you like this"
                    Song.new.get_chill_song
                end
            
                options
        
        
    end


    def options
        puts "Would you like to save a song to your profile? (y/n)"
        answer = gets.chomp
        if answer == 'y'
            save_song
            
        elsif answer == 'n'
            puts "Would you like to select again? (y/n)"
            emb_answer = gets.chomp
            if emb_answer == 'y'
                mood_select
            elsif emb_answer == 'n'
                puts "What would you like to do? (save, delete, exit)"
                    emb2_answer = gets.chomp
                    if emb2_answer == "exit"
                        exit_app
                    elsif emb2_answer == "save"
                        save_song
                    elsif emb2_answer == "delete"
                        delete_song
                    end
            end
        end
    end
    
    
    def save_song
        
        puts "What is your username again?"
            User.all.each do |user|
                puts user[:name]
                end
            
            my_username = gets.chomp
            
        puts "Choose from a list of songs which one you want to save to your profile."
                Song.all.each do |song|
                puts song[:name]
                end
            
            song_name = gets.chomp
            
            UserSong.create(user: User.find_by(username: my_username ), song: Song.find_by(name: song_name))
    end
    
    
    
    
    def delete_song
        # puts "What is your username again?"
        #     User.all.each do |user|
        #         puts user[:name]
        #         end
            
        #     my_username = gets.chomp
        puts "Find your user-id"

            User.all.each do |user|
                puts user[:id]
            end

            my_id = gets.chomp

        puts "Choose from a list of songs which one you want to delete" 
            Song.all.each do |song|
                puts "#{song[:name]}  #{song[:id]}".to_s
                end
            
            song_name = gets.chomp
        
            UserSong.where(user_id: my_id).destroy_all

        end

    def exit_app
        puts "goodbye! Thanks for using our app!"
    end


end
