class GarbageCan < ActiveRecord::Base
  attr_accessible :name
  has_many :garbages
  has_many :throwers, :through => :garbages
end
