class Category 

    @@all = []

    attr_accessor :site_name

    def initialize(site_name)
        @site_name = site_name 
        @@all << self 
    end 
 

    def self.all 
        @@all 
        binding.pry
    end 

    def categories
        Site.all.select {|category| site.category == self}
    end

   def self.find_or_create_by_name(site_name)
    found_category = self.all.find {|category| category.site_name == site_name}
    if found_category
      return found_category
    else
      return self.new(site_name)
    end
  end

    
  




    

end 
