class OfficeHour < ActiveRecord::Base
  belongs_to :user
  has_many :slots

  attr_accessible :day, :num_of_slots, :start_time
  attr_accessor :num_of_slots, :length, :start_time

  after_create :setup_hours

  def setup_hours
    length = 30
    (1..@num_of_slots).each do |i|
      time = @start_time.to_time + (length * 60 * (i - 1))

      slots.create! time: time, length: length
    end
  end
end
