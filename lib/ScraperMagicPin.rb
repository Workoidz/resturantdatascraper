require 'mechanize'

class ScraperMagicPin
  attr_accessor :url, :restaurant

  def initialize url
    @url = url
  end

  
  def html_document 
    response = HTTParty.get(url)
    @doc = Nokogiri::HTML(response.body)  
  end

  def rest_name
    @r = Rest.new
    @r.name = @doc.css('a[data-type="merchant-name"]').first.content
    @r.name
  end

  def get_rest
    @r
  end

end
