# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
todos = Todo::Todo.create([
  {title: "Buy Groceries", description: "Go to Safeway, don't forget the coupons.", author_name: "Paul Oguda"},

  {title: "Wash the Car", description: "Have a date this Saturday.", author_name: "Rita Kariuki"},

  {title: "Clean my room", description: "It's that time of year again.", author_name: "Folashade Atieno"},

  {title: "Do the Laundry", description: "Don't forget the bleach!", author_name: "Irene Kiarie"},

  {title: "Work on Mini-Project", description: "What are Happy Tails anyway?", author_name: "Maureen Musimo"},

  {title: "Walk the Dog", description: "Take Fido around the block.", author_name: "Atieno Oguda"}

   ])