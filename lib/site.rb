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

    def self.print_site_name_with_index
        puts ""
    end  

   


end