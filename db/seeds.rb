# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."

Restaurant.create!(name: "Bella Roma", address: "12 Soho Square, London W1D 3QF", category: "italian", phone_number: "07 82 45 12 30")
puts "Created Bella Roma"

Restaurant.create!(name: "Sakura House", address: "88 Camden High St, London NW1 0LT", category: "japanese", phone_number: "07 55 89 22 14")
puts "Created Sakura House"

Restaurant.create!(name: "Le Petit Bistro", address: "4 Charlotte St, London W1T 2LP", category: "french", phone_number: "06 59 33 77 81")
puts "Created Le Petit Bistro"

Restaurant.create!(name: "Chez Marcel", address: "19 Rue Street, London WC2H 8LN", category: "french", phone_number: "06 24 90 11 45")
puts "Created Chez Marcel"

Restaurant.create!(name: "Brussels Delight", address: "3 Warwick St, London W1B 5LR", category: "belgian", phone_number: "07 61 44 99 08")
puts "Created Brussels Delight"


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
