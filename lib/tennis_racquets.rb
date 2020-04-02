#require "tennis_racquets/version"
require "pry"
require "nokogiri"
require "open-uri"

require_relative "./tennis_racquets/cli.rb"
require_relative "./tennis_racquets/scraper.rb"
require_relative "./tennis_racquets/racquets.rb"

module TennisRacquets
  class Error < StandardError; end
  # Your code goes here...
end
