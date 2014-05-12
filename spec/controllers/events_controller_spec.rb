require 'spec_helper'

describe EventsController do

	describe "test" do
		it "routes put update" do
	  	expect(:put => "events/1").to route_to(
	      :controller => "events",
	      :action => "update",
	      :id => "1")
  	end
  end	

	describe "GET #index" do
		it 'assigns a collection of events' do
			e = FactoryGirl.create(:event)
			get :index
			assigns(:events).count.should eq(1)
		end
	end

	describe "GET #new" do
		it 'assigns @new_event a new event' do
			get :new
			assigns(:new_event).should be_a_new(Event)
		end
	# 	it 'renders the new page'
	 end

	describe "POST #create" do
		it 'assigns @new_event a new event' do
			event_attrs = {name: "Show", description: "Fun Time", location: "Jersey!"}
			expect{
				post :create, event: FactoryGirl.attributes_for(:event)
			}.to change(Event, :count).by(1)
		end
	end

	# describe "PUT #update" do
	# 	it "should update attributes" do
 #    	@event.should_receive(:update_attributes)
 #    	put :update
 #  	end
 #  end

	# describe "PUT #update" do
	# 	it 'updates an existing event' do
	# 		put :update, event: {id: 1, name: "Show", description: "Fun Time", location: "Jersey!"}
	# 		@event
	# 	end

		# it 'redirects to index page' do
		# 		event_attrs = {name: "Show", description: "Fun Time", location: "Jersey!"}
		# 		put :update
		# 		response.should redirect_to :index
		# end
	# end

	# describe "GET #new_photo_for_event" do
	# 	it 'builds an instance of photo' do
	# 		get :new_photo_for_event
	# 		assigns(:photo).count.should eq(1)
	# 	end
	# end


end
