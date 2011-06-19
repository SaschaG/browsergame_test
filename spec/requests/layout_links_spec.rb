require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Startseite")
  end

  it "should have a Contact page at '/signin'" do
    get '/signin'
    response.should have_selector('title', :content => "Login")
  end
	
	it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Anmeldung")
  end
  
  	it "should have a signup page at '/rules'" do
    get '/rules'
    response.should have_selector('title', :content => "Regeln")
  end
  
    it "should have a signup page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Hilfe")
  end
  
    it "should have a signup page at '/links'" do
    get '/links'
    response.should have_selector('title', :content => "Links")
  end
  
    it "should have a signup page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Kontakt")
  end
  
  
  
	it "should have the right links on the layout" do
		visit root_path
		click_link "Startseite"
		response.should have_selector('title', :content => "Startseite")
		click_link "Regeln"
		response.should have_selector('title', :content => "Regeln")
		click_link "Hilfe"
		response.should have_selector('title', :content => "Hilfe")
		click_link "Anmelden"
		response.should have_selector('title', :content => "Anmeldung")
		click_link "Links"
		response.should have_selector('title', :content => "Links")
		click_link "Einloggen"
		response.should have_selector('title', :content => "Login")
		click_link "Kontakt"
		response.should have_selector('title', :content => "Kontakt")
	end
end
