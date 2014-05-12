FactoryGirl.define do
	factory :comment do |f|
		f.id 1
		f.content "This is a comment"
		f.commentable_id "1"
		f.commentable_type "Photo"
	end
end