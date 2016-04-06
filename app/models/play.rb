class Play < ActiveRecord::Base
	belongs_to :teather
	has_many :schedules
end
