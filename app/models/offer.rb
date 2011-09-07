class Offer < ActiveRecord::Base
	belongs_to :user
	has_one :dish
end
