class TagsController < ApplicationController

	def new
		@tag = Tag.new
	end

	def create
		tag = Tag.where(name: params[:tag][:name]).first_or_create
		photo = Photo.find(params[:tag][:photo_id])
		photo.tags << tag
		if tag.save
			redirect_to events_path
		else
			render new_tag_path
		end
	end

	def edit
		@tag = Tag.find(params[:id])
	end

	private

	def tag_params
		params.require(:tag).permit!(:photo_id)
	end

end
