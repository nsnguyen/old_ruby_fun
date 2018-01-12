class Pet < ActiveRecord::Base
  validates_presence_of :PetName
  validates_presence_of :Owner
  validates_presence_of :PetWalker
  validates_presence_of :ApptDate
  validates_presence_of :ApptLength
  validates_numericality_of :ApptDate, :only_integer =>true
end
