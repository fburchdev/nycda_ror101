class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def destroy #was delete
  	#puts "PARAMS ARE " + params.inspect
  	puts "My destroy method was called here. --FB"
  	@user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = 'User deleted.'
    else
     flash[:alert] = 'There was a problem deleting
     the user.'
    end
    redirect_to root_path
  end

end
