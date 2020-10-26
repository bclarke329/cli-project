class Site

    @@all = []

    attr_accessor :site_name, :info, :url, :category

    def initialize(site_name, category, info, url)
        @site_name = site_name
        @category = category
        @url = url
        @info = info 
        @@all << self
        # binding.pry
      
    end 

    def self.all
        @@all
    end 

   def self.print_sites
    # binding.pry
        @@all.each_with_index do |site, index|
            sleep(1)
            puts "#{index + 1}. #{site.site_name}"
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            # binding.pry
        end 
    end 

    def self.print_site_info(input)
        puts "#{Site.all[input - 1].info}"
        puts " "         
    end 
end 