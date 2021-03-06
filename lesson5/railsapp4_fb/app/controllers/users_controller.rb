class UsersController < ApplicationController
  def new
  	    @user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      session[:user_id] = @user.id
  		flash[:notice] = "Your account was created successfully."
  	  redirect_to user_path @user
    else
  		flash[:alert] = "There was a problem saving your account."
  		redirect_to new_user_path
  	end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes (params[:user])
  		redirect_to action:'show', id:@user
  	else
  		render "edit"
  	end
  end
  
  def show
  	@user = User.find(params[:id])
  end

end
