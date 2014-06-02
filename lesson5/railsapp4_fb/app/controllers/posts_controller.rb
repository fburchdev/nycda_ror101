class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    params[:post][:user_id] = session[:user_id]
    #puts params[:post]
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Your post was created successfully."
      redirect_to post_path @post
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @user = User.find(session[:user_id])
    @posts = Post.where(user_id: params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
  end
end
