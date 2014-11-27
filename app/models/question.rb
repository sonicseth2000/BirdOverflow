class Question < ActiveRecord::Base
has_many :answers
  validates_uniqueness_of :content 
  validates_uniqueness_of :title
  validates_presence_of :content
  validates_presence_of :title
end
