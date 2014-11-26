class Question < ActiveRecord::Base
has_many :answers
  validates_uniqueness_of :content 
end
