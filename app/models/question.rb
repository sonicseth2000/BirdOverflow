class Question < ActiveRecord::Base
  self.primary_key = 'question_id'
  validates_uniqueness_of :content 
  belongs_to :user
  has_many :answers
end
