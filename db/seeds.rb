# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Offer.destroy_all
puts "Offers destroyed"
User.destroy_all
puts "Users destroyed"

user1 = User.create!(email: "mario@gmail.com", password: "abcdefg")
user2 = User.create!(email: "luigi@gmail.com", password: "abcdefg")
user3 = User.create!(email: "peach@gmail.com", password: "abcdefg")

Offer.create!(user: user1, name: "Marie Dubois", offer_type: "Gardening", description: "Passionate gardener with a love for flowers", area: "Nantes, France", photo_url: "Marie_gardening.jpg")
Offer.create!(user: user2, name: "Jean Lefèvre", offer_type: "Manual activities", description: "Skilled carpenter crafting beautiful furniture", area: "Lyon, France", photo_url: "Jean_manual_activities.jpg")
Offer.create!(user: user3, name: "Sophie Martin", offer_type: "Culture", description: "Former history teacher who loves kids very much", area: "Paris, France", photo_url: "Sophie_culture.jpg")
Offer.create!(user: user1, name: "Alexandre Bernard", offer_type: "Bakery", description: "Talented baker teaching how to do beautiful croissant", area: "Marseille, France", photo_url: "Alexandre_bakery.jpg")
Offer.create!(user: user2, name: "Chantal Renard", offer_type: "Cooking", description: "Chef specializing in healthy vegan dishes", area: "Lille, France", photo_url: "Chantal_cooking.jpg")

Offer.create!(user: user3, name: "Pierre Moreau", offer_type: "Manual activities", description: "Handyman with expertise in fixing all things", area: "Bordeaux, France", photo_url: "Pierre_manual_activities.jpg")
Offer.create!(user: user1, name: "Elodie Fontaine", offer_type: "Gardening", description: "Flowers, flowers, flowers wtf nature is beautiful", area: "Rennes, France", photo_url: "Elodie_gardening.jpg")
Offer.create!(user: user2, name: "Luc Durand", offer_type: "Culture", description: "Musical teacher in a rock band", area: "Toulouse, France", photo_url: "Luc_culture.jpg")
Offer.create!(user: user3, name: "Isabelle Petit", offer_type: "Culture", description: "Linguist offering French and English lessons", area: "Strasbourg, France", photo_url: "Isabelle_culture.jpg")
Offer.create!(user: user1, name: "Marc Olivier", offer_type: "Culture", description: "Tech enthusiast solving computer problems", area: "Nice, France", photo_url: "Marc_culture.jpg")
