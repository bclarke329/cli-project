
class Scraper

    def self.cultural_scraper #KEEP THIS SCRAPER
        first_url = "https://whc.unesco.org/en/statesparties/us"
        html = open(first_url)
        parsed_elements = Nokogiri::HTML(html)
        unesco_cultural = parsed_elements.css("div.box li.cultural")

        cultural_sites = unesco_cultural.css("li.cultural a")
        culture_url = "https://whc.unesco.org/en/" + cultural_sites.css('a')[0].attributes['href'].value
        
        cultural_category = Category.new("Cultural")
    
        cultural_sites.each_with_index do |cultural_site, index|
            site_name = cultural_site.text
            site_url = "https://whc.unesco.org" + cultural_site.attr('href')
           

        url = site_url
        info_html = open(site_url)
        info_parsed_elements = Nokogiri::HTML(info_html)

        cultural_info = info_parsed_elements.css('#contentdes_en p')
            cult_info = cultural_info.text
                # puts "#{cult_info}"
                Site.new(site_name, cultural_category, cult_info, site_url)
            end 

    end 
    
 

    def self.natural_scraper #KEEP THIS SCRAPER
        url = "https://whc.unesco.org/en/statesparties/us"
        html = open(url)
        parsed_elements = Nokogiri::HTML(html)
        unesco_natural = parsed_elements.css("div.box li.natural")

        natural_sites = unesco_natural.css("li.natural a")
        natural_url = "https://whc.unesco.org/en/" + unesco_natural.css("li.natural a")[0].attributes['href'].value 

        natural_category = Category.new("Natural")

        natural_sites.each do |natural_site|
            nat_site_name = natural_site.text
            site_url = "https://whc.unesco.org" + natural_site.attr('href')
           

            info_html = open(site_url)
            info_parsed_elements = Nokogiri::HTML(info_html)

            nat_info = info_parsed_elements.css('#contentdes_en p')
            nat_info = nat_info.text
            # puts "#{nat_info}"
            Site.new(nat_site_name, natural_category, nat_info, natural_url)
    # binding.pry
            end 
     end
 
end 
