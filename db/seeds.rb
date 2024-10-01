# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "clearing database..."
Recipe.destroy_all

Recipe.create!(name: "Enchilada", description: "An enchilada is a delicious Mexican dish made from corn tortillas that are rolled around a filling and covered with a savory sauce. The fillings can vary widely, including options like seasoned meats (chicken, beef, pork), cheese, beans, or vegetables.", image_url: "https://www.gimmesomeoven.com/wp-content/uploads/2014/10/The-Best-Chicken-Enchiladas-Recipe-1-1.jpg", rating: 5)
Recipe.create!(name: "fajitas", description: "Fajitas are a delicious and versatile dish originating from Mexican cuisine. They typically consist of grilled meat (like chicken, beef, or shrimp) served with sautéed bell peppers and onions, all wrapped in a warm flour or corn tortilla. You can customize them with various toppings such as cheese, sour cream, salsa, and guacamole.", image_url: "https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/02/Chicken-Fajitas-9-1-1024x1536.jpg", rating: 4)
Recipe.create!(name: "chocolate cake", description: "A chocolate cake is a delicious dessert made with chocolate or cocoa powder. The basic process involves mixing ingredients like flour, sugar, eggs, butter, and chocolate, then baking the mixture until it’s fully cooked. Once baked, the cake is often cooled and can be frosted with chocolate ganache, buttercream, or other toppings to enhance its flavor12.", image_url: "https://whereismyspoon.co/wp-content/uploads/2016/11/chocolate-gateau-best.jpg", rating: 3)
Recipe.create!(name: "pizza", description:"Pizza is a popular Italian dish that consists of a flat, round base of leavened wheat-based dough. This base is typically topped with tomato sauce, cheese (most commonly mozzarella), and a variety of other ingredients such as meats, vegetables, and herbs. The pizza is then baked at a high temperature, traditionally in a wood-fired oven, until the crust is crispy and the cheese is melted and bubbly", image_url: "https://mypizzacorner.com/wp-content/uploads/2022/11/pizza-ooni-karu.webp", rating: 4)
Recipe.create!(name: "Pepper and garlic pork chops", description: "Garlic and pepper pork chops are a delicious and flavorful dish made by marinating pork chops in a mixture of garlic, black pepper, and other seasonings. Here’s a simple overview of how they’re typically prepared:", image_url: "https://www.allrecipes.com/thmb/xfN1jknprdRSYvkQLtDoa8cfLBc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/281629skillet-pepper-and-garlic-pork-chopsfabeveryday4x3-afb676a0ba5f4513a46ede0c4f5506d0.jpg", rating: 3)

puts "#{Recipe.all.count} Recipes created ..."
