class Site

    @@all = []

    attr_accessor :site_name, :info, :url, :category

    def initialize(site_name, category, info, url)
        @site_name = site_name
        @category = category
        @url = url
        @info = info 
        @@all << self  
    end 

    def self.all
        @@all
    end 

    def self.print_sites
        @@all.each_with_index do |site, index|
        sleep(0.5)
        puts "#{index + 1}. #{site.site_name}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        end 
    end 

    def self.print_site_info(input)
        puts "#{Site.all[input - 1].site_name}"
        puts "   "
        puts "#{Site.all[input - 1].info}"
        puts "   "         
    end 

    def self.clear
        @@all.clear
    end 
   

    
end 