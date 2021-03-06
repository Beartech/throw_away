class Thrower < ActiveRecord::Base
  attr_accessible :name
  has_many :garbages
  has_many :garbage_cans, :through => :garbages
  def quantity
    self.garbages.count
  end
end
