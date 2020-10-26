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




end 
