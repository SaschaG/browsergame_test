class PagesController < ApplicationController
  def home
	@title = "Home"
  end

  def signin
  	@title = "Sign in"
  end

  def signup
  	@title = "Sign out"
  end

end
