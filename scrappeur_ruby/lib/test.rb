require 'nokogiri'
require 'open-uri'

# Récupérer les URLs des mairies
def get_townhall_urls(url)
  townhall_urls = []
  page_number = 1

  loop do
    full_url = "#{url}?page=#{page_number}"
    puts "Scraping : #{full_url}"

    page = Nokogiri::HTML(URI.open(full_url)) rescue break
    links = page.xpath('//a[contains(@class, "fr-link")]')

    break if page_number > 10

    townhall_urls += links.map { |link| URI.join(url, link['href']).to_s }.uniq
    page_number += 1
  end

  townhall_urls
end

# Récupérer les emails des mairies
def get_townhall_email(townhall_urls)
  townhall_urls.uniq.each do |url|
    page = Nokogiri::HTML(URI.open(url)) rescue next
    name = page.xpath('//h1[@id="titlePage"]').text.strip
    email = page.xpath('//a[starts-with(@href, "mailto:")]').text.strip
    puts "#{name} => #{email.empty? ? 'Email non trouvé' : email}"
    puts "-----------------------------"
  end
end

# Exécution
url = 'https://lannuaire.service-public.fr/navigation/ile-de-france/val-d-oise/mairie'
townhall_urls = get_townhall_urls(url)
get_townhall_email(townhall_urls) unless townhall_urls.empty?
