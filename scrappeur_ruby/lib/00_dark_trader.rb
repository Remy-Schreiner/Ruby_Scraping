require 'nokogiri'
require 'open-uri'
require 'uri'

base_url = "https://coinmarketcap.com/all/views/all/"

def get_price_crypto(base_url)

    page = Nokogiri::HTML(URI.open(base_url))
    name_crypto = page.xpath('//a[@class="cmc-table__column-name--name cmc-link"]')

    page = Nokogiri::HTML(URI.open(base_url))
    price_crypto = page.xpath('//div[contains(@class, "sc-142c02c-0 lmjbLF")]//span')


    final_tabl = []
    tabl_name = []
    tabl_price = []


    price_crypto.each do |i|
        tabl_price << i.text
    end

    name_crypto.each do |i|
        tabl_name << i.text
    end
    
    tabl_name.each_with_index do |name, index|
        my_hash = Hash.new
        my_hash[name] = tabl_price [index]

        final_tabl << my_hash
end
    return final_tabl
end


get_price_crypto(base_url)