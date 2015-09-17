class CommentsController < ApplicationController


	def create
		@post = Post.find(params[:post_id])

		Comment.create(body: params[:comment] [:body], post: @post )
		redirect_to @post, notice: "New Comment created"
	end



	def detroy
		
	end

end