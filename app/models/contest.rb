class Contest < ActiveRecord::Base
	mount_uploader :photo, AvatarUploader
  	validates :photo, presence:true
  	has_many :pins
  	has_many :users, :through => :pins
  	belongs_to :brand

end
