class Organization < ActiveRecord::Base
	
	#relations	
  has_many :org_users
  has_many :users, through: :org_users

  has_many :clients

	validates_presence_of :name

  validates_exclusion_of :name, in: ['www', 'mail', 'ftp'], message: 'is not available'
  
  mount_uploader :avatar, AvatarUploader
end
