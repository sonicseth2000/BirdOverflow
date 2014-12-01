class Question < ActiveRecord::Base
has_many :answers
has_many :responses
  validates_uniqueness_of :content 
  validates_uniqueness_of :title
  validates_presence_of :content
  validates_presence_of :title
end
