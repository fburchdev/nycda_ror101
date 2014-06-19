class Order < ActiveRecord::Base
	belongs_to :user
	has_many :products
	has_one :card
end
