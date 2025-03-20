require_relative '../lib/00_dark_trader'

RSpec.describe "Scraper des cryptos" do
  let(:base_url) { "https://coinmarketcap.com/all/views/all/" }
  let(:crypto_prices) { get_price_crypto(base_url) }

  it "récupère des prix de cryptos" do
    expect(crypto_prices).to be_an(Array)  # Vérifie que ce n'est pas nil
    expect(crypto_prices).not_to be_empty
    expect(crypto_prices.first).to be_a(Hash)
    expect(crypto_prices.first.keys.first).to be_a(String)
    expect(crypto_prices.first.values.first).to match(/\d+(\.\d+)?/)
  end
end
