# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
puts "Booking destroyed"
Offer.destroy_all
puts "Offers destroyed"
User.destroy_all
puts "Users destroyed"

user1 = User.create!(email: "mario@gmail.com", password: "abcdefg", photo: "Pacôme_Saint_Gilles.png")
user2 = User.create!(email: "luigi@gmail.com", password: "abcdefg", photo: "Pacôme_Saint_Gilles.png")
user3 = User.create!(email: "peach@gmail.com", password: "abcdefg", photo: "Pacôme_Saint_Gilles.png")

Offer.create!(user: user1, name: "Marie Dubois", offer_type: "gardening", description: "Passionate gardener with a love for flowers", area: "Nantes, France", price: 50, photo_url: "Marie_gardening.jpg")
Offer.create!(user: user2, name: "Jean Lefèvre", offer_type: "manual activities", description: "Skilled carpenter crafting beautiful furniture", area: "Lyon, France", price: 50, photo_url: "Jean_manual_activities.jpg")
Offer.create!(user: user3, name: "Sophie Martin", offer_type: "culture", description: "Former history teacher who loves kids very much", area: "Paris, France", price: 50, photo_url: "Sophie_culture.jpg")
Offer.create!(user: user1, name: "Alexandre Bernard", offer_type: "bakery", description: "Talented baker teaching how to do beautiful croissant", area: "Marseille, France", price: 50, photo_url: "Alexandre_bakery.jpg")
Offer.create!(user: user2, name: "Chantal Renard", offer_type: "cooking", description: "Chef specializing in healthy vegan dishes", area: "Lille, France", price: 50, photo_url: "Chantal_cooking.jpg")

Offer.create!(user: user3, name: "Pierre Moreau", offer_type: "manual activities", description: "Handyman with expertise in fixing all things", area: "Bordeaux, France", price: 50, photo_url: "Pierre_manual_activities.jpg")
Offer.create!(user: user1, name: "Elodie Fontaine", offer_type: "gardening", description: "Flowers, flowers, flowers wtf nature is beautiful", area: "Rennes, France", price: 50, photo_url: "Elodie_gardening.jpg")
Offer.create!(user: user2, name: "Luc Durand", offer_type: "culture", description: "Musical teacher in a rock band", area: "Toulouse, France", price: 50, photo_url: "Luc_culture.jpg")
Offer.create!(user: user3, name: "Isabelle Petit", offer_type: "culture", description: "Linguist offering French and English lessons", area: "Strasbourg, France", price: 50, photo_url: "Isabelle_culture.jpg")
Offer.create!(user: user1, name: "Marc Olivier", offer_type: "culture", description: "Tech enthusiast solving computer problems", area: "Nice, France", price: 50, photo_url: "Marc_culture.jpg")
