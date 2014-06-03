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
    @post = Post.find(params[:id])
    if @post.update_attributes (params[:post])
      redirect_to action:'show', id:@post
    else
      render "edit"
    end
  end

  def edit
    @post = Post.find(params[:id])
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
