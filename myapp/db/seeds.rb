# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quote.find_or_create_by!(
	content: "The secret of getting ahead is getting started.",
	author_id: Author.find_or_create_by(name: 'Mark Twain').id
)
Quote.find_or_create_by!(
	content: "I'd like to live as a poor man with lots of money.",
	author_id: Author.find_or_create_by(name: 'Pablo Picasso').id
) 
Quote.find_or_create_by!(
	content: "Death is caused by swallowing small amounts of saliva over a long period of time.",
	author_id: Author.find_or_create_by!(name: 'George Carlin').id
)
Quote.find_or_create_by!(
	content: "You can fool all the people some of the time, and some of the people all the time, but you cannot fool all the people all the time.",
	author_id: Author.find_or_create_by!(name: 'Abraham Lincoln').id
)
