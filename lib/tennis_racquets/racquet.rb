class TennisRacquets::Racquet 

attr_accessor :name, :price, :description  

@@all = []

def initialize(name, price, description)
  @name = name
  @price = price
  @description = description
  save
end

def self.all 
   TennisRacquets::Scraper.racquet_scraper
   @@all 
   
end

def save 
  @@all << self
end

end