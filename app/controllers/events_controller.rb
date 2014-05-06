class EventsController < ApplicationController

	def index
		@events = Event.all
		@photos = Photo.all
	end

	def new
		@new_event = Event.new
		@new_event.photos.build
	end

	def create
		@new_event = Event.new(event_params)
		if @new_event.save
			redirect_to events_path
		else
			render new_event_path
		end
	end

	private

	def event_params
		params.require(:event).permit(:name, :description, :location, photos_attributes: [:pic, :event_id, :description], tags_attributes: [:name, :description])
	end

end