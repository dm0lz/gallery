class Album < ActiveRecord::Base
	
	validates :cover, presence: true
	validates :title, presence: true

	has_many :pictures, :dependent => :destroy
	belongs_to :user

	accepts_nested_attributes_for :pictures

	mount_uploader :cover, ImageUploader

	extend FriendlyId
  	friendly_id :title, use: :slugged#, :use => :history
  	#rails g migration add_slug_to_albums slug:string
  	#add_index :albums, :slug
	
end
