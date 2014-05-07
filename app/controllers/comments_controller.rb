class CommentsController < ApplicationController

	def create
		@new_comment = Comment.new(comment_params)
		if @new_comment.save
			redirect_to events_path
		else
			render photo_path
		end
	end

	private

	def comment_params
		params.require(:comment).permit!
	end

end
