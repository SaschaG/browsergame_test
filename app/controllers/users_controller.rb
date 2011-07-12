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
      sign_in @user
      flash[:success] = "Willkommen auf der Browsergame - Testseite!"
      redirect_to @user
    else
      @user.password = ""
      @user.password_confirmation = ""
      @title = "Anmeldung"
      render 'new'
    end
  end
end
