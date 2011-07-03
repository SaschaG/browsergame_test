class UsersController < ApplicationController
   
   
   def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @user = User.new
    @title = "Anmeldung"
  end
  
  def create
  	@user = User.new(params[:user])
  	if @user.save
  		#Handle a successful save.
  	else
  		@title = "Anmeldung"
  		render 'new'
  	end
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Willkommen auf der Browsergame - Testseite!"
      redirect_to @user
    else
      @title = "Anmeldung"
      render 'new'
    end
  end
end
