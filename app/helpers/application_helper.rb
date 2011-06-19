module ApplicationHelper

	def logo
		logo = image_tag("browsergame_test_banner.jpg", :alt => "Browsergame Test", :class => "round")   
	end

	def title
		base_title = "Browsergame"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
end
