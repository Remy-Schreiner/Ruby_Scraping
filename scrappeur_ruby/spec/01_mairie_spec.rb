require_relative '../lib/01_mairie.rb' # Assure-toi que le nom du fichier Ruby est correct

RSpec.describe "Scraper des mairies" do
  let(:url) { 'https://lannuaire.service-public.fr/navigation/ile-de-france/val-d-oise/mairie' }
  let(:townhall_urls) { get_townhall_urls(url) }

  it "récupère des URLs de mairies" do
    expect(townhall_urls).not_to be_empty
    expect(townhall_urls.first).to match(/^https?:\/\/.+/)
  end

  it "récupère les emails des mairies sans erreur" do
    expect { get_townhall_email(townhall_urls) }.not_to raise_error
  end
end
