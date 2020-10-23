
class Scraper

    def initialize
        @base_url = "https://whc.unesco.org"
    end 


    def cultural_scraper 
        url = @base_url + "/en/statesparties/us"
        html = open(url)
        parsed_elements = Nokogiri::HTML(html)
        unesco_cultural = parsed_elements.css("div.box li.cultural")
       
        cultural_sites = unesco_cultural.css("li.cultural a")
        culture_url = "https://whc.unesco.org/en/" + cultural_sites.css('a')[0].attributes['href'].value

        cultural_sites.each_with_index do |cultural_site, index|
            site_name = cultural_site.text
            site_url = @base_url + cultural_site.attr('href')
            #Make new instances of sites 
            # Site.new(site_name, url, category = "cultural")
            # binding.pry
    
            # puts "#{index + 1}. #{site_name}"
            # puts "--------------------"
            # puts "#{url}"
            # Site.new(name, url) 
        
            # info_html = open(site_url)
            # info_parsed_elements = Nokogiri::HTML(info_html)
    
            # cultural_info = info_parsed_elements.css('#contentdes_en p')
            # cult_info = cultural_info.text
            # # puts "#{cult_info}"
           
    # end 

    # def second_cultural_scrape
        info_html = open(site_url)
        info_parsed_elements = Nokogiri::HTML(info_html)

        cultural_info = info_parsed_elements.css('#contentdes_en p')
        cult_info = cultural_info.text
    #     binding.pry
        end 
    end 


   


 def self.natural_scraper
    url = "https://whc.unesco.org/en/statesparties/us"
    html = open(url)
    parsed_elements = Nokogiri::HTML(html)
    unesco_natural = parsed_elements.css("div.box li.natural")
#    
    natural_sites = unesco_natural.css("li.natural a")
    natural_url = "https://whc.unesco.org/en/" + unesco_natural.css("li.natural a")[0].attributes['href'].value 
    natural_sites.each_with_index do |natural_site, index|
        name = natural_site.text
        site_url = @base_url + natural_site.attr('href')
        # puts " #{index + 1}. #{name}"
        # puts "--------------------"
    
        info_html = open(site_url)
        info_parsed_elements = Nokogiri::HTML(info_html)

        natural_info = info_parsed_elements.css('#contentdes_en p')
        nat_info = natural_info.text
        Site.new(site_name, url, category = "natural")
        # puts "#{natural_info}"
        end
    end 
        # puts "#{url}"

        def second_natural_scrape(natural_scraper)
            info_html = open(site_url)
            info_parsed_elements = Nokogiri::HTML(info_html)
    
            natural_info = info_parsed_elements.css('#contentdes_en p')
            nat_info = natural_info.text
        end 
    
end 


