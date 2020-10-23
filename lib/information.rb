class Information

    @@all = []

    def initialize
        @name = name
        @info = info
        @@all << self
    end

    def self.all
        @@all
    end 

     def print_cultural_info
        puts "#{cult_info}"
     end 




end 