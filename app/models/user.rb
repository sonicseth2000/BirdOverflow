class User < ActiveRecord::Base
  has_secure_password
  has_many :responses
  has_many :questions
  has_many :answers
  has_many :messages
  validates_uniqueness_of :username
  validates_presence_of :password
end
