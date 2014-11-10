class Response < ActiveRecord::Base
	validates :Response_ID, presence: true, numericality: true
	validates :Q_Response_ID, presence: true, numericality: true
	validates :R_Response_ID, presence:true, numericality: true
	validates :Creator_ID, presence: true, numericality: true
	validates :Response_Score, presence: true, length: {minimum: 0000}
	validates :Timestamp, presence: true
	self.primary_key = :Response_ID
	
	
end
