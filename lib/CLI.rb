
class CLI

    def run 
    puts "Welcome to the UNESCO World Heritage site CLI app, the US Edition." 
    puts "There are 24 Unesco Sites across the US and they are divided by Natural or Cultural significance."
    puts "Choose a category to explore more!"
    sleep(1)
    puts "Enter 1 for Cultural or 2 for Natural."
    user_input = gets.chomp
        if user_input == "1"
            puts "1. All Cultural Sites"
        #display Cultural sites 
        puts "Which site would you like to know more about?"
         #have user choose one from the list by number
         #once chosen, bring up scrap based on cultural site.
        else
            user_input == "2"
            user_input = gets.chomp
        #display natural titles
        puts "Which site would you like to know more about?"
        #have user chooose one from the list
        #once chosen, bring up scrap based on chosen site.
        end 


    end 


end 