class Slot < ActiveRecord::Base
  belongs_to :office_hour
  attr_accessible :length, :time
end
