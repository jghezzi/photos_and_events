require 'spec_helper'

describe PhotosController do

	describe "GET #new" do
		it 'assigns @new_event a new event' do
			p = FactoryGirl.create(:photo)
			get :new
			assigns(:new_photo).should be_a_new(Photo)
		end
	end

	describe "POST #create" do
		it 'assigns @new_photo a new photo' do
			photo_attrs = {pic: "PIC", event_id: 1, description: "FUN"}
			expect{
				post :create, photo: FactoryGirl.attributes_for(:photo)
			}.to change(Photo, :count).by(1)
		end
	end

	describe ""

	# describe "PUT #update" do
	# 	it "should update attributes" do
 #    	@photo.should_receive(:update_attributes)
 #    	put :update
 #  	end
 #  end	

end
