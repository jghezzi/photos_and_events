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

	def new_photo_for_event			
		@event = Event.find(params[:event_id])
		@event.photos.build
	end

	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(event_params)
			redirect_to events_path
		else
			render :back
		end
	end

	private

	def event_params
		params.require(:event).permit(:name, :description, :location, photos_attributes: [:pic, :event_id, :description], tags_attributes: [:name, :description])
	end

end