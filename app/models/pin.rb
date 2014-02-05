class Pin < ActiveRecord::Base
	mount_uploader :photo, AvatarUploader
	validates :photo, presence:true
	validates :description, presence:true

end
