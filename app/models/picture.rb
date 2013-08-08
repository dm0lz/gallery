class Picture < ActiveRecord::Base
  belongs_to :album
  belongs_to :user
  #delegate :user, :to => :album, :allow_nil => true
  #validates :name, :presence => true
  validates :image, :presence => true

  mount_uploader :image, ImageUploader

  	before_create :default_name

	def default_name
		#binding.pry
	  	nom = File.basename(image.filename, '.*').titleize if image 
	  	self.name ||= nom[0..20]
		#binding.pry
	end
end
