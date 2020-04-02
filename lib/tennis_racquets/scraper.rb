class TennisRacquets::Scraper

def self.racquet_scraper
  url = "https://www.tennis-warehouse.com/usedcatpage.html?ccode=HEADRACS"
  doc = Nokogiri::HTML(open(url))
  
  #section = doc.css("div#content_wrap")
  #racquet = section.css("a.name").
  #price = section.css("span.price").text
  #description = section.css("p").text
  section = doc.css("table.cat_border_table")

  racquet = section.css("div.text_wrap a.name")
  #name = racquet.css("a.name").text
  #price = section.css("span.price")[0]
  #description = section.css("p")[0]
  racquet.each do |r|
  puts r.text
  end 
   #section.each do |n|
    #name = n.css("a.name").text
    #price = n.css("span.price").text
    #description = n.css("p").text
    TennisRacquets::Racquet.new(name)
    #binding.pry
end
end