class TennisRacquets::Scraper

def self.racquet_scraper
  url = "https://www.tennis-warehouse.com/usedcatpage.html?ccode=HEADRACS"
  doc = Nokogiri::HTML(open(url))
  
  section = doc.css("table.cat_border_table")

    #racquet_name = section.css("div.text_wrap a.name")
    #price = section.css("span.price").text
    #description = section.css("p").text
  section.each do |r|
    name = r.css("div.text_wrap a.name").text
    price = r.css("span.price").text
    description = r.css("p").text
    TennisRacquets::Racquet.new(name, price, description)
    puts name, price, description
   end 
   #section.each do |n|
    #name = n.css("a.name").text
    #price = n.css("span.price").text
    #description = n.css("p").text
    #TennisRacquets::Racquet.new(name)
    binding.pry
end
end