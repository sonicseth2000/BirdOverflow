class Hacker < ActiveRecord::Base 
  validates_presence_of :password, :on => :create 
end
