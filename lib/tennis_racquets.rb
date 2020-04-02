require "tennis_racquets/version"
require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative "./tennis_racquets/cli"
require_relative "./tennis_racquets/scraper"
require_relative "./tennis_racquets/racquet"

module TennisRacquets
  class Error < StandardError; end
  # Your code goes here...
end
