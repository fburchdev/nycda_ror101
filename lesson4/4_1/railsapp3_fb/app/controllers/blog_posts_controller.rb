class BlogPostsController < ApplicationController
	def index
		#@params = params
		@blog_posts = BlogPost.where(user_id: params["user_id"]) 
			
	end
end
