class Question < ActiveRecord::Base
	validates :Question_ID, presence: true, numericality: true
	validates :Creator_ID, presence: true, numericality: true
	validates :Timestamp, presence: true
end
