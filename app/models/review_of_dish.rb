class ReviewOfDish < ActiveRecord::Base
	belongs_to: dish
	has_one: user

end
