class PagesController < ApplicationController
  def home
	@title = "Startseite"
	
  end

  def signin
  	@title = "Login"
  end
  
	def contact
  	@title = "Kontakt"
  end
  
  def help
  	@title = "Hilfe"
  end
  
  def rules
  	@title = "Regeln"
  end
  
  def links
  	@title = "Links"
  end
  
  def map 
  	@title = "Karte"
  end
  
end
