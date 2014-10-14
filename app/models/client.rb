class Client < ActiveRecord::Base
	has_many :notaries
	belongs_to :user
end
