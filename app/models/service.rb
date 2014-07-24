class Service < ActiveRecord::Base

  has_many :hits

  validates_presence_of :name
  validates_length_of :name, :maximum => 12
  validates_presence_of :permalink
  validates_length_of :permalink, :within => 3..255
  validates_uniqueness_of :permalink
  validates_uniqueness_of :name
  
end
