require 'spec_helper'

describe TagsController do

describe "POST #create" do
		it 'assigns @new_tag a new tag' do
			expect{
				post :create, tag: FactoryGirl.attributes_for(:tag)
			}.to change(Tag, :count).by(1)
		end
	end
end