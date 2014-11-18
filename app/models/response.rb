class Response < ActiveRecord::Base
  self.primary_key = 'response_id'
  belongs_to :user
end
