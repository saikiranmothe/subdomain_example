class Orgusers < ActiveRecord::Base
	#relations
	belongs_to :user
	belongs_to :organization
end
