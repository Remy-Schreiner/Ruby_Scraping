require 'nokogiri'
require 'open-uri'

def get_price_crypto(url)
  page = Nokogiri::HTML(URI.open(url))
  
  names = page.xpath('//a[@class="cmc-table__column-name--name cmc-link"]').map(&:text)
  prices = page.xpath('//div[contains(@class, "sc-142c02c-0 lmjbLF")]//span').map(&:text)
  
  names.zip(prices).map { |name, price| { name => price } }
end

puts get_price_crypto("https://coinmarketcap.com/all/views/all/")
