class TennisRacquets::Scraper

def self.racquet_scraper
  url = "https://www.tennis-warehouse.com/usedcatpage.html?ccode=HEADRACS"
  doc = Nokogiri::HTML(open(url))
  
  section = doc.css("div#content_wrap")
  racquet = section.css("a.name")
  price = section.css("span.price").text
  description = section.css("p").text
  section.each do |n|
    name = n.css("a.name").text
    price = n.css("span.price").text
    description = n.css("p").text
    TennisRacquets::Racquet.new(name, price, description)
  end
end
end