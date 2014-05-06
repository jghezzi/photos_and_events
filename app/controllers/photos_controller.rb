class PhotosController < ApplicationController

	def edit
		@photo = Photo.find(params[:id])
	end

	def show
		@photo = Photo.find(params[:id])
		@new_comment = @photo.comments.build
	end

	def update
		@new_comment.save
	end

	def get_tag
		@tag = Tag.new
		@photo = Photo.find(params[:id])
	end

	private

	def photo_params
		params.require(:photo).permit(:pic, :event_id, :description, tags_attributes: [:name, :description])
	end

end
