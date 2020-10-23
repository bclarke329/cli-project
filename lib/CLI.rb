
class CLI

    def initialize 
        @scraper = Scraper.new
    end 

    def run 
    # Category.create_categories
    puts "Welcome to the UNESCO World Heritage site CLI app, the US Edition." 
    puts "There are 24 UNESCO Sites across the US and they are divided by natural or cultural significance."
    puts "Choose a category to explore more!"
    puts "Cultural or Natural?"
    puts "Enter 1 for Cultural or 2 for Natural."
    user_input = gets.chomp
        if user_input == "1"
            puts "All Cultural Sites"
            @scraper.cultural_scraper
            # puts "#{index + 1}. #{site_name}"
            # puts "--------------------"
        puts "Which site would you like to know more about?"
         #have user choose one from the list by number
         #once chosen, bring up scrap based on cultural site.
        else
            user_input == "2"
            user_input = gets.chomp
            puts "2. All Natural Sites"
        puts "Which site would you like to know more about?"
        #have user chooose one from the list
        #once chosen, bring up scrap based on chosen site.
        end 


    end 


end 