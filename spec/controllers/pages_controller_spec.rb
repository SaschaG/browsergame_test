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
    							:content => @base_title + " | Startseite")
	end
  end

  
  describe "GET 'map'" do
    it "should be successful" do
      get 'map'
      response.should be_success
    end
    
    it "should have the right title" do
    	get 'map'
    	response.should have_selector("title",
    							:content => @base_title + " | Karte")
	end
  end

 
  
  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
    	get 'contact'
    	response.should have_selector("title",
    							:content => @base_title + " | Kontakt")
	end
  end
  
    describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have the right title" do
    	get 'help'
    	response.should have_selector("title",
    							:content => @base_title + " | Hilfe")
	end
  end
  
    describe "GET 'rules'" do
    it "should be successful" do
      get 'rules'
      response.should be_success
    end
    
    it "should have the right title" do
    	get 'rules'
    	response.should have_selector("title",
    							:content => @base_title + " | Regeln")
	end
  end
  
    describe "GET 'links'" do
    it "should be successful" do
      get 'links'
      response.should be_success
    end
    
    it "should have the right title" do
    	get 'links'
    	response.should have_selector("title",
    							:content => @base_title + " | Links")
	end
  end
end
