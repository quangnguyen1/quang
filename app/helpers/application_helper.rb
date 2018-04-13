module ApplicationHelper

	def full_title(pages_title= "")
		base_title = "Ruby on Rails Tutorial Sample App 786"
		# if pages_title.empty?
		# 	base_title
		# else
		# 	pages_title + "|" + base_title
		# end #dong 10;
		pages_title.empty? ? base_title : pages_title + "|" + base_title
	end

	def gravatar_for user
	end
end
