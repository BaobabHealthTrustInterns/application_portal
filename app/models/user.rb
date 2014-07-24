class User < ActiveRecord::Base
	attr_accessible :username, :password, :password_confirmation, :email, :first_name, :last_name


	attr_accessor :password
	before_save :encrypt_password

    EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

	validates_confirmation_of :password
	validates :first_name, :presence => true, :length => { :maximum => 25 }
	validates :last_name, :presence => true, :length => { :maximum => 25 }
	validates :username, :length => { :within => 8..15 }, :uniqueness => true
	validates :email, :presence => true, :length => { :maximum => 40 }

	# only on create, so other attributes of this user can be changed
	validates_length_of :password, :within => 8..25, :on => :create

	
	def self.authenticate(username, password)
		user = find_by_username(username)
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil 
		end
	end
	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end

end
 