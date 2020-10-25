
class Scraper

def self.cultural_scraper #KEEP THIS SCRAPER
    url = "https://whc.unesco.org/en/statesparties/us"
    html = open(url)
    parsed_elements = Nokogiri::HTML(html)
    unesco_cultural = parsed_elements.css("div.box li.cultural")
    # cultural_sites = unesco_cultural.css("li.cultural a")
    # first_site = cultural_sites.first.text #first listing => returns Cahokia Mounds
    # cultural_url = cultural_sites.css('a')[0].attributes['href'].value
    cultural_sites = unesco_cultural.css("li.cultural a")
    culture_url = "https://whc.unesco.org/en/" + cultural_sites.css('a')[0].attributes['href'].value
    
    cultural_category = Category.new("Cultural")
    cultural_sites.each do |cultural_site|
        name = cultural_site.text
        site_url = "https://whc.unesco.org" + cultural_site.attr('href')
       
        info_html = open(site_url)
        info_parsed_elements = Nokogiri::HTML(info_html)
        cultural_info = info_parsed_elements.css('#contentdes_en p')
        cult_info = cultural_info.text
        Site.new(name, cult_info,cultural_category)
    
    end
    binding.pry
end 






def self.natural_scraper #KEEP THIS SCRAPER
url = "https://whc.unesco.org/en/statesparties/us"
html = open(url)
parsed_elements = Nokogiri::HTML(html)
unesco_natural = parsed_elements.css("div.box li.natural")
#     natural_sites = unesco_natural.css("li.natural a")
#     natural_sites.first.text #first listing => returns Carlsbad Caverns
#     natural_url = unesco_natural.css("li.natural a")[0].attributes['href'].value 
#     binding.pry
natural_sites = unesco_natural.css("li.natural a")
natural_url = "https://whc.unesco.org/en/" + unesco_natural.css("li.natural a")[0].attributes['href'].value 
natural_category = Category.new("Natural")
natural_sites.each do |natural_site|
    name = natural_site.text
    site_url = "https://whc.unesco.org" + natural_site.attr('href')
   

    info_html = open(site_url)
    info_parsed_elements = Nokogiri::HTML(info_html)

    natural_info = info_parsed_elements.css('#contentdes_en p')
    nat_info = natural_info.text
    Site.new(name, nat_info, natural_category)

        end 
    end
end 

