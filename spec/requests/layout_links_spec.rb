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


    describe "when not signed in" do
      it "should have a signin link" do
        visit root_path
        response.should have_selector("a", :href => signin_path,
                                         :content => "Einloggen")
      end
    end

    describe "when signed in" do

      before(:each) do
        @user = Factory(:user)
        visit signin_path
        fill_in :email,    :with => @user.email
        fill_in :password, :with => @user.password
        click_button
      end

    it "should have a signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path,
                                         :content => "Sign out")
    end

    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user),
                                         :content => "Profile")
    end 
  end
end
