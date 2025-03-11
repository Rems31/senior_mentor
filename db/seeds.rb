# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Offer.create(name: "Marie Dubois", offer_type: "Gardening", description: "Passionate gardener with a love for flowers", area: "Nantes, France", photo_url: "images/Marie gardening.jpg")
Offer.create(name: "Jean Lefèvre", offer_type: "Manual activities", description: "Skilled carpenter crafting beautiful furniture", area: "Lyon, France", photo_url: "images/Jean manual activities.jpg")
Offer.create(name: "Sophie Martin", offer_type: "Culture", description: "Former history teacher who loves kids very much", area: "Paris, France", photo_url: "images/Sophie culture.jpg")
Offer.create(name: "Alexandre Bernard", offer_type: "Bakery", description: "Talented baker teaching how to do beautiful croissant", area: "Marseille, France", photo_url: "images/Alexandre bakery.jpg")
Offer.create(name: "Chantal Renard", offer_type: "Cooking", description: "Chef specializing in healthy vegan dishes", area: "Lille, France", photo_url: "images/Chantal cooking.jpg")

Offer.create(name: "Pierre Moreau", offer_type: "Manual activities", description: "Handyman with expertise in fixing all things", area: "Bordeaux, France", photo_url: "images/Pierre manual activities.jpg")
Offer.create(name: "Elodie Fontaine", offer_type: "Gardening", description: "Flowers, flowers, flowers wtf nature is beautiful", area: "Rennes, France", photo_url: "images/Elodie gardening.jpg")
Offer.create(name: "Luc Durand", offer_type: "Culture", description: "Musical teacher in a rock band", area: "Toulouse, France", photo_url: "images/Luc culture.jpg")
Offer.create(name: "Isabelle Petit", offer_type: "Culture", description: "Linguist offering French and English lessons", area: "Strasbourg, France", photo_url: "images/Isabelle culture.jpg")
Offer.create(name: "Marc Olivier", offer_type: "Culture", description: "Tech enthusiast solving computer problems", area: "Nice, France", photo_url: "images/Marc culture.jpg")
