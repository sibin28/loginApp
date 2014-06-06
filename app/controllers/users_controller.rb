class UsersController < ApplicationController
 def new
	#Testing
	#controller
	@user = User.new
 end
def create
  @user = User.new(params[:user])
  if @user.save
   flash[:notice] = "Saved successfully"
   flash[:color]= "valid"
   render "home"
  else
   flash[:notice] = "Form is invalid"
   flash[:color]= "invalid"
   redirect_to(:action => 'login')
  end
 end
 def login
   authorized_user = User.authenticate(params[:username],params[:password])
   if authorized_user
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      redirect_to(:action => 'home')
   else
       flash[:notice] = "Invalid Username or Password"
       flash[:color]= "invalid"
       render "error"	
   end
 end
end

