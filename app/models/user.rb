class User < ActiveRecord::Base
	# rails3: attr_accessible :name, :email
	# rails4 :Protecting attributes is now done in the Controller, No need to set attr_accessible in the model anymore.
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name, presence: true, length: { maximum: 50}

	validates :email, presence: true, format: { with: email_regex}, uniqueness: {case_sensitive: false}
end
