class User < ActiveRecord::Base
	
	validates :User_ID, numbericality: true
	validates :Score, numbericality: true, length: {minumum: 0}
	
	self.primary_key = :User_ID

	has_many :responses
	has_many :questions
	has_many :messages

	

end
