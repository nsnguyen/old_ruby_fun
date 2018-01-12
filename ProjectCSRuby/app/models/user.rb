class User < ActiveRecord::Base
  validates_presence_of :username
  validates_presence_of :password
  validates_length_of :password, :minimum =>8
  validates_presence_of :pin
  validates_length_of :pin, :minimum =>4
  validates_presence_of :question1
  validates_presence_of :question1, :maximum =>100
  validates_presence_of :question2
  validates_presence_of :question2, :maximum =>100
  validates_presence_of :email
  
end
