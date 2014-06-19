class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.where(email: params[:email]).first
  	
  	if @user && @user.email == params[:email]
  		session[:user_id] = @user.id
  		flash[:notice] = "Signed In"
  		#redirect_to user_path(@user)
      redirect_to products_path
  	else
  		flash[:alert] = "Email is incorrect"
  		redirect_to signin_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to home_path
  end
end
