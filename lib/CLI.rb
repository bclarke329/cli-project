
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
            puts "Loading cultural sites.."
            @scraper.cultural_scraper
            @site.print_all_cultural_names
            binding.pry
            sleep(1)
          puts "Which site would you like to know more about?"
            user_input = gets.chomp
            user_input = "#{index - 1}"
            @scraper.second_cultural_scrape
        #     else
        #     user_input == "2"
        #     user_input = gets.chomp
        #     puts "2. All Natural Sites"
        # puts "Which site would you like to know more about?"
        # #have user chooose one from the list
        # #once chosen, bring up scrap based on chosen site.
        # end 

        # def user_site_selection
        # end 

        end
    end 

end 