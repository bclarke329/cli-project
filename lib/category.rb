class Category 

    @@all = []

    attr_accessor :category, :url

    def initialize(category)
        @category = category
        @url = url
        @@all << self
    end 

    def categories
        Site.all.select {|category| site.category == self}
    end

#    def self.find_or_create_by_name(category)
#     found_category = self.all.find {|category| category.site_name == site_name}
#     if found_category
#       return found_category
#     else
#       return self.new(site_name)
#     end
#   end


end 
