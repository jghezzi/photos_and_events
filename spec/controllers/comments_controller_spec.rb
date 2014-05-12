require 'spec_helper'

describe CommentsController do

	describe "POST #create" do
		it 'assigns @new_comment a new comment' do
			expect{
				post :create, comment: FactoryGirl.attributes_for(:comment)
			}.to change(Comment, :count).by(1)
		end
	end
end


