class CLI

    def run
        greeting 
        user_selection
        sleep(2)
        view_more_sites
        
    end 


    def greeting 
        puts "    "
        puts "    "
        puts "Welcome to the UNESCO World Heritage site CLI app, the US Edition." 
        puts "There are 22 UNESCO Sites across the US and they are divided by natural or cultural significance."
        puts "   "
        puts "Choose a category to explore more!"
        puts "Enter 1 for Cultural or 2 for Natural."
        
       
    end 


    def user_selection 
        user_input = gets.chomp 
            if user_input == "1"
               cultural_output
             elsif
                user_input == "2"
               natural_output
            else
                puts "Sorry that was not a valid input! Try again."
                puts "Enter 1 or 2"
                user_selection
            end
        
            
    end  

    def cultural_output 
        puts "  "
        puts "Sit tight! We'll load that faster than it'll take you to walk to the top of the Statue of Liberty."
        puts "Loading cultural sites..."
        puts "   "
        Scraper.cultural_scraper
        Site.print_sites
        puts "Which site would you like to know about about? Enter the number that matches your chosen location."
        input = gets.chomp.to_i
        puts "  "
        Site.print_site_info(input)
    end 



    def natural_output
        puts "Good choice! We'll load your choices faster than it takes for a redwood tree to grow to its full size!"
        puts "Loading natural sites..."
        puts " "
        Scraper.natural_scraper
        Site.print_sites
        puts "Which site would you like to know more about? Enter a number that matches your chosen location."
        input = gets.chomp.to_i
        puts "   "
        Site.print_site_info(input)
    end 


    def view_more_sites
        puts "Would you like to view another cultural site?"
        puts "Enter Y for yes, N for natural sites, or anything else to exit." 
        input = inputs.strip.upcase
            if input == "Y"
                cultural_output
            elsif
                 input == "N"
                 natural_output 
            else
                exit
            end 
        end 

        

    def exit
        puts "   "
        puts "Thank you for checking out our site!"
    end 

  
        

end 

    
    