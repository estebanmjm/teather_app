class Discount < ActiveRecord::Base
	belongs_to :teather
	has_many :users, :through => :tokens
end
