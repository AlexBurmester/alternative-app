# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
social_books = [
	["Helhedssyn i socialt arbejde", "Margit Harder"],
	["Den gode opgave", "Lotte Rienecker"],
	["Nye horisonter i socialt arbejde", "Maria Appel Nissen"],
	["Kommunikation i praksis", "Tom Eide"],
	["Kommunikation og samarbejde", "Mads Hermansen"],
	["Modeller i socialt arbejde", "Siv Oltedal"]
]

social_books.each do |title, author|
	Book.create(title: title, author: author)
end