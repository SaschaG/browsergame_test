require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/signin'" do
    get '/signin'
    response.should have_selector('title', :content => "Sign in")
  end

  it "should have an About page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
	
	it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
end
