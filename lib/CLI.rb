class CLI

    def run
        greeting 
        user_selection 
    end 


    def greeting 
        puts "Welcome to the UNESCO World Heritage site CLI app, the US Edition." 
        puts "There are 22 UNESCO Sites across the US and they are divided by natural or cultural significance."
        puts "Choose a category to explore more!"
        puts "Cultural or Natural?"
       
    end 


    def user_selection  
        puts "Enter 1 for Cultural or 2 for Natural."
        user_input = gets.chomp
            if user_input == "1"
               cultural_output
             elsif
                user_input == "2"
               natural_output
            else
                puts "Sorry that was not a valid input! Try again."
            end
    end  

    def cultural_output 
        puts "  "
        puts "Sit tight! We'll load that faster than it'll take you to walk to the top of the Statue of Liberty."
        puts "Loading cultural sites..."
        puts "   "
        Scraper.cultural_scraper
        Site.print_sites
        puts "Which site would you like to know about about? Enter a number between 1-11."
        input = gets.chomp.to_i
        Site.print_site_info(input)
    end 

    def natural_output
        puts "Good choice! We'll load your choices faster than it takes for a redwood tree to grow to its full size!"
        puts "Loading natural sites..."
        puts " "
        Scraper.natural_scraper
        Site.print_sites
        puts "Which site would you like to know more about? Enter a number between 1-11."
        input = gets.chomp.to_i
        Site.print_site_info(input)
    end 
        
end 

    
    