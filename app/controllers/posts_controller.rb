class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new message_params
		if @post.save
			redirect_to posts_path
		else
			render "new"
		end
	end
	def edit
	end
	def update
	end
	def show
		@post = Post.find(params[:id])
	end
	def destroy
	end
	def message_params
      params.require(:post).permit(:title, :body, :category_id)
   end
end
