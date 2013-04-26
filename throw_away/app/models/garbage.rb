class Garbage < ActiveRecord::Base
  belongs_to :thrower
  belongs_to :garbage_can
  attr_accessible :item, :thrower, :garbage_can, :thrower_id, :garbage_can_id
end
