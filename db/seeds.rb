# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Color.destroy_all
Flag.destroy_all

red = Color.create(name: "red")
blue = Color.create(name: "blue")
white = Color.create(name: "white")

usa = Flag.create(country: "USA", description: "Thirteen horizontal stripes alternating red and white; in the canton, 50 white stars of alternating numbers of six and five per row on a blue field.", num_of_colors: 3, img_url: "https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg")
japan = Flag.create(country: "Japan", description: "The Rising Sun Flag as used by the JMSDF; White with a red disc slightly to the hoist with 16 rays extending from the disc to the edges of the flag.", num_of_colors: 2, img_url: "https://upload.wikimedia.org/wikipedia/en/9/9e/Flag_of_Japan.svg")

usa.colors << [red, white, blue]
japan.colors << [red, white]
