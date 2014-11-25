class User < ActiveRecord::Base
<<<<<<< HEAD
  self.primary_key = 'user_id'
  has_many :responses
  has_many :questions
  has_many :answers
  has_many :messages
=======
>>>>>>> d2a115d581e88099faefb9b0b74e8295e5c67a43
end
