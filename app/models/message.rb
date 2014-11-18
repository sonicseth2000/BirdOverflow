class Message < ActiveRecord::Base
  self.primary_key = 'message_id'
  belongs_to :user
end
