module StaticPagesHelper
	def get_link_for_pages
		links = []
		links[0] = link_to("Home", static_pages_home_path)
		links[1] = link_to("About", static_pages_about_path)
		links[2] = link_to("Who we are", static_pages_who_we_are_path)
		links[3] = link_to("Emails", emails_path)
		return links
	end
	def gravatar(email)
		@gravatar_image = []
		if email.to_a.size == 1
	  		return "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.to_s)}?d=wavatar"
	 
	  	end
	  	email.each do |email|  
	  		@gravatar_image << "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}?d=monsterid"
	  	end 
	   	return @gravatar_image
	  
	end
end
