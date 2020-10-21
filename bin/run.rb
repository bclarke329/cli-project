require_relative '../environment.rb'

# url = "https://whc.unesco.org/en/statesparties/us"
# html = open(url)
# parsed_elements = Nokogiri::HTML(html)
# unesco_cultural = parsed_elements.css("div.box li.cultural")


# cultural_sites = unesco_cultural.css("li.cultural a").text
# first_site = unesco_sites.css(li.cultural a").first
# natural_site = unesco_sites.css("ul li.natural a").text
# first_natural = unesco_sites.css("ul li.natural a").first

    
 def cultural_scraper
    url = "https://whc.unesco.org/en/statesparties/us"
    html = open(url)
    parsed_elements = Nokogiri::HTML(html)
    unesco_cultural = parsed_elements.css("div.box li.cultural")
    # cultural_sites = unesco_cultural.css("li.cultural a")
    # first_site = cultural_sites.first.text #first listing => returns Cahokia Mounds
    # cultural_url = cultural_sites.css('a')[0].attributes['href'].value
    cultural_sites = unesco_cultural.css("li.cultural a")
    culture_url = "https://whc.unesco.org/en/" + cultural_sites.css('a')[0].attributes['href'].value
    cultural_sites.each do |cultural_site|
        name = cultural_site.text
        url = "https://whc.unesco.org/en/" + cultural_site.attr('href')
        puts "#{name}"
        puts "#{url}"
        # Site.new(name, url)
       
    end 
end 

cultural_scraper


#  def natural_scraper
#     url = "https://whc.unesco.org/en/statesparties/us"
#     html = open(url)
#     parsed_elements = Nokogiri::HTML(html)
#     unesco_natural = parsed_elements.css("div.box li.natural")
#     natural_sites = unesco_natural.css("li.natural a")
#     natural_sites.first.text #first listing => returns Carlsbad Caverns
#     natural_url = unesco_natural.css("li.natural a")[0].attributes['href'].value 
#     binding.pry
#  end 


# cultural = Category.new("Cultural")
# natural = Category.new("Natural")
# mixed = Category.new("Mixed")






