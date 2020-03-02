# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quotes = [  
	"The secret of getting ahead is getting started.", # Mark Twain
	"I'd like to live as a poor man with lots of money.", # Pablo Picasso
	"Death is caused by swallowing small amounts of saliva over a long period of time.", # George Carlin
	"You can fool all the people some of the time, and some of the people all the time, but you cannot fool all the people all the time." # Abraham Lincoln
]

authors = ["Mark Twain", "Pablo Picasso", "George Carlin", "Abraham Lincoln"]

quotes.each do |quote|
  Quote.find_or_create_by!(content: quote)
end

authors.each do |author|
  Author.find_or_create_by!(name: author)
end
