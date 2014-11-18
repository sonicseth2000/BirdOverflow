class Question < ActiveRecord::Base
<<<<<<< HEAD
  self.primary_key = 'question_id'
  validates_uniqueness_of :content 
  belongs_to :user
  has_many :answers
=======

>>>>>>> d2a115d581e88099faefb9b0b74e8295e5c67a43
end
