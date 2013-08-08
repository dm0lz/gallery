class Album < ActiveRecord::Base
	
	validates :cover, presence: true
	validates :title, presence: true

	has_many :pictures, :dependent => :destroy
	belongs_to :user

	accepts_nested_attributes_for :pictures

	mount_uploader :cover, ImageUploader
	
end
