class PostsController < ApplicationController
  
	before_action :set_post, only: [:show, :edit, :update, :destroy]


  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def show
    @comment = Comment.new
  end 

  def edit
  end

  def create
  	@post = Post.create(params.require(:post).permit(:body, :title))
  	redirect_to @post, notice: "New post created."
  end

  def update
  end

  def detroy
  end

end

private 

def set_post
 		@post = Post.find(params[:id])
end

















  