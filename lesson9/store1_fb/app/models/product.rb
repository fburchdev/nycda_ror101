class Product < ActiveRecord::Base
	belongs_to :order
	validates_presence_of :product_name
	validates :product_name, uniqueness: true
	validates_presence_of :product_number
	validates :product_number, uniqueness: true
end
