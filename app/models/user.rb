class User < ActiveRecord::Base
  self.primary_key = 'user_id'
  has_many :responses
  has_many :questions
  has_many :answers
  has_many :messages
end
