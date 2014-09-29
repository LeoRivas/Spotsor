class Brand < ActiveRecord::Base
	mount_uploader :logo, AvatarUploader
	has_many :contests
end
