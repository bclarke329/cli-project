class CLI

    def run 
        greeting 
        user_selection
    end

    def greeting
        puts "Welcome to the UNESCO World Heritage site CLI app, the US Edition." 
        puts "There are 24 UNESCO Sites across the US and they are divided by natural or cultural significance."
        puts "Choose a category to explore more!"
        puts "Cultural or Natural?"
        puts "Enter 1 for Cultural or 2 for Natural."
        user_input = gets.chomp
            if user_input == "1"
                puts "Loading cultural sites.."
                Scraper.cultural_scraper
                Site.print_sites
                user_input = gets.chomp
                user_input = "#{index - 1}"
            elsif
                user_input == "2"
                puts "Loading natural sites..."
                Scraper.natural_scraper
                puts "Which site would you like to know more about?"
                user_input = gets.chomp
                user_input = "#{index - 1}"
            else
                puts "Sorry that was not a valid input."
            end
    end  



end 

    