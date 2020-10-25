class Site

    @@all = []

    attr_accessor :site_name, :info, :category

    def initialize(name,category,url)
        @name = name
        @category = name
        @@all << self
    end 

    def self.all
        @@all
    end 


end 