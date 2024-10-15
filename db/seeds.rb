# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# require 'csv'

# file = File.join(Rails.root, "db", "breweries_us.csv")
# CSV.foreach(file) do |row|
#   name = row[0]
#   # p name
#   type = row[1]
#   # p type
#   website = row[2]
#   # p website
#   address = row[3]
#   # p address
#   state = row[4]
#   # p state
Brewery.create(name: "Valley Brewing Co.", bar_type: "Brewpub", address: "157 Adams St., Stockton, California, 95204", state: "california")
Brewery.create(name: "Ukiah Brewing Company", bar_type:"Brewpub", address: "102 S. State St., Ukiah, California, 95482", state:"california")
Brewery.create(name: "Tustin Brewing Co.", bar_type:"Brewpub", address: "13011 Newport Ave. #100, Tustin, California, 92780", state:"california")
Brewery.create(name: "Trumer Brauerei", bar_type:"Microbrewery", address: "1404 4th St., Berkeley, California, 94608", state:"california")
Brewery.create(name: "Triple Rock Brewing Co.", bar_type:"Brewpub", address: "1920 Shattuck Ave, Berkeley, California, 94704", state:"california")
# end