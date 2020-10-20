require_relative 'environment.rb'

url = "https://www.nationalparks.org/explore-parks/all-parks"
html = open("https://www.nationalparks.org/explore-parks/all-parks")
html_parsed_to_elements = Nokogiri::HTML(html)

binding.pry