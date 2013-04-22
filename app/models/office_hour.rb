class OfficeHour < ActiveRecord::Base
  belongs_to :user
  has_many :slots

  attr_accessible :day, :num_of_slots, :start_time, :length
  attr_accessor :num_of_slots, :length, :start_time

  def num_of_slots= value
    @num_of_slots = value.to_i
  end

  def length= value
    @length = value.to_i
  end

  def start_time= value
    if value.class == String.class
      @start_time = Time.zone.parse(value).to_datetime
    else
      @start_time = value
    end
  end

  after_create :setup_hours

  def setup_hours
    (1..@num_of_slots).each do |i|
      time = @start_time.to_time + (length * 60 * (i - 1))

      slots.create! time: time, length: length
    end
  end
end
