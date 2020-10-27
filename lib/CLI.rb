class CLI

    def run
        greeting 
        menu
    end 


    def greeting 
        puts "    "
        puts "    "
        puts "Welcome to the UNESCO World Heritage site CLI app, the US Edition." 
        puts "There are 22 UNESCO Sites across the US and they are divided by natural or cultural significance."
        puts "   "
        puts "Choose a category to explore more!"
    end 


    def menu 
        input = nil
        while input != "exit"
            puts "  "
            puts "Please enter 1 or 2 to view sites."
            puts "Enter exit to leave the program"

         input = gets.strip.downcase

            case input 
                when "1"
                    cultural_output
                when "2"
                    natural_output
                when "exit" 
                    goodbye
                end 
            end 
    end  

    def cultural_output 
        puts "  "
        puts "Sit tight! We'll load that faster than it'll take you to walk to the top of the Statue of Liberty."
        puts "Loading sites..."
        puts "   "
        Scraper.cultural_scraper
        Site.print_sites
        puts "Which site would you like to know about about? Enter the number that matches your chosen location."
        input = gets.chomp.to_i
        puts "  "
        Site.print_site_info(input)
        sleep(2)
        puts "Would you like to view more sites?"
    end 



    def natural_output
        puts "Good choice! We'll load your choices faster than it takes for a redwood tree to grow to its full size!"
        puts "Loading sites..."
        puts " "
        Scraper.natural_scraper
        Site.print_sites
        puts "Which site would you like to know more about? Enter a number that matches your chosen location."
        input = gets.chomp.to_i
        puts "   "
        Site.print_site_info(input)
        sleep(2)
        puts "Would you like to view more sites?"
    end 

    
    def goodbye
        puts "   "
        puts "Thank you for checking out our site!"
    end 

  
        

end 

    
    