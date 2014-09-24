class Contest < ActiveRecord::Base
  	validates :photo, presence:true
end
