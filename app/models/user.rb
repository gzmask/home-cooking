require 'digest/sha1'
class User < ActiveRecord::Base
	has_many :menus
	has_many :orders
	has_many :offers
	has_many :review_of_users
	belongs_to :review_of_user

	attr_accessor :unhashed_pwd
	
	EMAIL_REGEX=/^[A-Z0-9._+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

	validates :name, :presence=>true, :length=>{:maximum=>25}
	validates :user_name, :presence=>true, :length=>{:within => 4..25},:uniqueness=>true
	validates :email, :presence=>true, :length=>{:maximum=>50}, :format=>EMAIL_REGEX, :confirmation=>true

	validates_length_of :unhashed_pwd,:within => 4..25, :on => :create

	before_save :create_hashed_pwd
	after_save :clear_unhashed_pwd	

	attr_protected :hashed_pwd, :salt

	def self.make_salt(user_name="")
		Digest::SHA1.hexdigest("Use #{user_name} with #{Time.now} to make salt")
	end

	def self.hash_with_salt(unhashed_pwd="",salt="")
		
		Digest::SHA1.hexdigest("put #{salt} on to #{unhashed_pwd}")
	end 

	def self.authenticate(user_name="",password="")
		user=User.find_by_user_name(user_name)
		if user&& user.pwd_match?(password)
			return user
		else 
			return false
		end
	end

	def pwd_match?(password="")
		pwd== User.hash_with_salt(password, salt)
	end


	private
	def create_hashed_pwd 
		unless unhashed_pwd.blank?
			self.salt=User.make_salt(user_name) if salt.blank?
			self.pwd= User.hash_with_salt(unhashed_pwd, salt)
		end
	end

	def clear_unhashed_pwd
		self.unhashed_pwd = nil
	end

	
end
