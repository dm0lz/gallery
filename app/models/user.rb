class User < ActiveRecord::Base

	#include ActiveModel::Validations

	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	validates :password, presence: true
	#validates :email, presence: true, uniqueness: true

	has_many :albums, :dependent => :destroy
	has_many :pictures, :through => :albums

end
