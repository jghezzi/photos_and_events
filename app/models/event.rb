class Event < ActiveRecord::Base
	has_many :photos
	has_many :comments, as: :commentable
	accepts_nested_attributes_for :photos
end