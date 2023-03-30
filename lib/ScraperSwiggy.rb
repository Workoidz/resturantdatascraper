require 'mechanize'

class ScraperSwiggy
  
  attr_accessor :url, :restaurant

  def initialize url
    @url = url
  end

end
