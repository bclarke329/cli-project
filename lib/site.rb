class Site

    @@all = []

    attr_accessor :site_name, :url, :category 

    def initialize(site_name, url, category)
        @site_name = site_name
        @url = url
        @category = category 
       @@all << self 
    end

    def self.all
        @@all
    end 

    def print_all_cultural_names
        @site.each_with_index do |culture_site, index|
            puts "#{index + 1}. #{culture_site}"
        end 
    end 
     
  
   


end