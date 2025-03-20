🚀 Web Scraping with Ruby Welcome to this Ruby Web Scraping Project! This repository contains several Ruby scripts that scrape public data from various websites using Nokogiri and open-uri. We also provide RSpec tests to ensure their functionality.

📌 Project Overview ✅ 01_mairie.rb (Townhall Scraper) This script scrapes town hall emails from a French government directory. It collects the names and emails of town halls in the Val-d'Oise department.

🔹 How it works:

It extracts URLs of town halls from 10 pages. It visits each town hall's page and retrieves its email address. It prints the results in a structured format. 📌 Tested with: spec/01_mairie_spec.rb

✅ 02_dark_trader.rb (Cryptocurrency Scraper) This script scrapes cryptocurrency prices from CoinMarketCap. It retrieves a list of crypto names with their current prices.

🔹 How it works:

It scrapes the CoinMarketCap "All Cryptos" page. It extracts the name and price of each cryptocurrency. It stores the data in a structured array of hashes. 📌 Tested with: spec/02_dark_trader_spec.rb

🔧 02_cher_depute.rb (Deputies Scraper - In Progress) This script will soon scrape French deputies' information, including names, emails, and political parties.

📌 Test & Development:

The scraper is currently under development. The corresponding RSpec test spec/02_cher_depute_spec.rb is also in progress. 🛠 Installation & Usage 1️⃣ Install Ruby & Dependencies Ensure you have Ruby installed. Then, install the required gems:

$ bundle install

2️⃣ Run the Scripts Run the Cryptocurrency Scraper:

$ ruby 00_dark_trader.rb

Run the Townhall Scraper:

$ ruby 01_mairie.rb

3️⃣ Run the Tests To ensure everything works correctly, run the RSpec tests:

$ rspec

🚀 Contributing If you want to improve the scrapers or add new features, feel free to fork this repository! Contributions for 02_cher_depute.rb are welcome. 📜 License This project is open-source under the MIT License.

Happy scraping! 🕵️‍♂️🚀
