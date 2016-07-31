class SessionController < ApplicationController

#use gem devise to complete password and authentication
#require 'devise'
#create a new user session
  def new
    @user = User.new
  end

  def create
  #params["user"]["email"] #=> "johndoe@gmail.com"
  #find_by returns where as
  #method .find will throw an erro
  @user = User.find_by(email: params["user"]["email"])

  if @user
    # session = {}
    session["user_id"] = @user.id #assigns session to the current user

    redirect_to(clients_path) #login page 

end
