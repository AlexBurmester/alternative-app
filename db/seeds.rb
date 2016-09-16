# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
social_books = [
	["Helhedssyn i socialt arbejde", "Margit Harder", "Tretten forfatteres diskussioner og meninger om begrebet helhedssyn indenfor socialt arbejde."],
	["Den gode opgave", "Lotte Rienecker", "I mere end 15 år har studerende på tværs af fag og uddannelser anvendt Den gode opgave, den kendte håndbog i opgaveskrivning til studerende og undervisere på lange og mellemlange videregående uddannelser."],
	["Nye horisonter i socialt arbejde", "Maria Appel Nissen", "Den, der begiver sig ud i verden for at udføre socialt arbejde, må ud fra en grundlæggende faglig viden kunne formulere sin egen rolle. Desuden må hun have et kendskab til samfundet og institutionerne. Dette er en forudsætning for at kunne forme et arbejde, der kan kaldes deres, dvs. et arbejde, hvor en særlig faglig rolle kan komme til udfoldelse. Rollen får man ikke automatisk. Den skal formuleres og formes inden for rammerne af den sociale sammenhæng, hvor det sociale arbejde udføres."],
	["Kommunikation i praksis", "Tom Eide", "Kommunikation i praksis er en grund- og studiebog om god kommunikation i praksis. Den er delt i to hovedafsnit, hvor første del er en indføring i centrale områder og retninger inden for kommunikations- og relationsteori, og anden del er læserens vej til at tilegne sig de grundlæggende praktiske kommunikationsfærdigheder."],
	["Kommunikation og samarbejde", "Mads Hermansen", "Kommunikation og samarbejde handler om, hvordan man får indsigt i og udvikler sine egne og andres evner til at kommunikere og samarbejde i professionelle relationer. Bogen forholder sig både til metoder og viser vej gennem praktiske øvelser."],
	["Modeller i socialt arbejde", "Siv Oltedal", "Bogen præsenterer fem centrale teorier, som danner grundlaget for forståelses- og handlingsmodeller i socialt arbejde. Forfatterne tager psykodynamiske, interaktionistiske, læringsteoretiske, konfliktteoretiske og systemteoretiske traditioner op."]
]

social_books.each do |title, author, description|
	Book.create(
		title: title, 
		author: author, 
		description: description, 
		book_img: File.open(File.join(Dir.home, "Pictures", "alternative_images", "#{title}.jpg")),
		rating: 2,
		semester_id: 1
		)
end

7.times do 
	Semester.create
end