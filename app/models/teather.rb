class Teather < ActiveRecord::Base
	has_many :discounts
	has_many :comments
	has_many :plays
end
