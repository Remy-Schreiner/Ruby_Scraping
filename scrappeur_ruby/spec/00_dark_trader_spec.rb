require_relative '../lib/00_dark_trader' 
require 'rspec'

RSpec.describe "Crypto Scraper" do
  it "retrieves cryptocurrency prices" do
    crypto_prices = get_price_crypto("https://coinmarketcap.com/all/views/all/")
    expect(crypto_prices).to be_an(Array)
    expect(crypto_prices).not_to be_empty
    expect(crypto_prices.first).to be_a(Hash)
  end
end
