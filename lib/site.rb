class Site

    @@all = []

    attr_accessor :site_name, :info, :url, :category

    def initialize(site_name, category, url)
        @site_name = site_name
        @category = category
        @url = url
        @@all << self
      
    end 

    def self.all
        @@all
    end 

    def self.print_sites
        @site_name.each_with_index do |site_name, index|
            puts "#{index + 1}. #{site_name}"
        end 
    end 
    
    
end 