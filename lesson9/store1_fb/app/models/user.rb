class User < ActiveRecord::Base
	has_many :cards
	has_many :orders
	validates_presence_of :email
	validates :email, uniqueness: true
end
