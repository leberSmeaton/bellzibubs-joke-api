# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

joke_categories = ["Puns", "Programming", "Knock Knock Jokes"]

if User.count == 0
  User.create(username: "Bella", email: "bella@test.com", password: "password1", password_confirmation: "password1")
  User.create(username: "Bella7", email: "bella7@test.com", password: "password7", password_confirmation: "password7")
end

if Category.all.length == 0 
  joke_categories.each do |category|
    Category.create(name: category)
    puts "created #{category} category"
  end
end

if Joke.all.length == 0
  Joke.create(user_id: 1, category_id: 1, body: "A good steak pun is a rare medium done well.")
  Joke.create(user_id: 1, category_id: 1, body: "I was wondering why the ball was getting bigger. Then it hit me.")
  Joke.create(user_id: 1, category_id: 1, body: "What's the difference between a hippo and a zippo? One is really heavy and the other is a little lighter.")
  Joke.create(user_id: 2, category_id: 1, body: "In order to understand recursion you must first understand recursion.")
  Joke.create(user_id: 2, category_id: 2, body: "A programmer is heading out to the grocery store, and is asked to 'get a gallon of milk, and if they have eggs, get a dozen.' So they return with 12 gallons of milk.")
end