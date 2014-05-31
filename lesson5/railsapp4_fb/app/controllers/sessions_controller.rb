class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.where(login_name: params[:login_name]).first
  	
  	if @user && @user.login_name == params[:login_name]
  		session[:user_id] = @user.id
  		flash[:notice] = "Signed In"
  		redirect_to user_path(@user)
  	else
  		flash[:alert] = "Login Name is incorrect"
  		redirect_to signin_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to home_path
  end
end
