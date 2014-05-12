class PhotosController < ApplicationController

	def new
		@new_photo = Photo.new
	end

	def create
		@new_photo = Photo.new(photo_params)
		if @new_photo.save
			redirect_to events_path
		else
			redirect_to new_photo_path
		end
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def show
		@photo = Photo.find(params[:id])
		@new_comment = @photo.comments.build
	end

	def show_and_tag
		@photo = Photo.find(params[:id])
		@new_tag = @photo.tags.build
	end

	private

	def photo_params
		params.require(:photo).permit(:pic, :event_id, :description, tags_attributes: [:name, :description])
	end

end