class Photo < ActiveRecord::Base
	belongs_to :event
	has_and_belongs_to_many :tags
	has_many :comments, as: :commentable
	mount_uploader :pic, PhotoUploader
	accepts_nested_attributes_for :tags
end