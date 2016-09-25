module ApplicationHelper

	#returns the full title on a per-page basis
	def full_title(page_title = "")
		base_title = "Pensum Popo"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

	def description(page_description = "")
  	base_description = "Pensum Popo giver dig svaret."
  	if page_description.empty?
  		base_description
  	else
  		page_description + " " + base_description
  	end
	end

end
