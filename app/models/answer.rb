class Answer < ActiveRecord::Base
  self.primary_key = 'answer_id'
  belongs_to :question
end