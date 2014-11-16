class User < ActiveRecord::Base
	validates :User_ID, numbericality: true
	validates :Score, numbericality: true, length: {minumum: 0}
	
end
