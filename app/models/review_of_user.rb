class ReviewOfUser < ActiveRecord::Base
	belongs_to :user
	has_one :poster, :class_name=> "User", :foreign_key=>"poster_id"
end
