class Message < ActiveRecord::Base
	validates :Message_ID, presence: true, numericality: true
	validates :Sender_ID, presence: true, numericality: true
	validates :Reciever_ID, presence: true, numericality: true
	validates :Timestamp, presence: true,  
end
