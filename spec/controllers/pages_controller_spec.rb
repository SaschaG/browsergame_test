require 'spec_helper'

describe PagesController do
	render_views
	
	before(:each) do
	
	@base_title = "Browsergame"
	
	end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
    	get 'home'
    	response.should have_selector("title",
    							:content => @base_title + " | Home")
	end
  end


  describe "GET 'signin'" do
    it "should be successful" do
      get 'signin'
      response.should be_success
    end
    
    it "should have the right title" do
    	get 'signin'
    	response.should have_selector("title",
    							:content => @base_title + " | Sign in")
	end
  end

  describe "GET 'signup'" do
    it "should be successful" do
      get 'signup'
      response.should be_success
    end
    
    it "should have the right title" do
    	get 'signup'
    	response.should have_selector("title",
    							:content => @base_title + " | Sign up")
	end
  end

end
