class TagsController < ApplicationController

	def new
		@tag = Tag.new
	end

	def edit
		@tag = Tag.find(params[:id])
	end


end
