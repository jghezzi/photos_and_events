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

	def update
		@new_comment.save
	end

	def get_tag
		@new_tag = Tag.new
		@photo = Photo.find(params[:id])
	end

	def show_and_tag
		@photo = Photo.find(params[:id])
		@new_tag = @photo.tags.build
	end

	def add_photo_to_event
		@photo = Photo.new
	end

	def save_photo_to_event
		@photo.save
	end

	private

	def photo_params
		params.require(:photo).permit(:pic, :event_id, :description, tags_attributes: [:name, :description])
	end

end