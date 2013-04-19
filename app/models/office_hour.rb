class OfficeHour < ActiveRecord::Base
  belongs_to :user
  has_many :slots

  attr_accessible :day, :num_of_slots, :start_time

  after_create :setup_hours

  def num_of_slots= slots
    @num_of_slots = slots
  end

  def start_time= start_time
    @start_time = start_time
  end

  def setup_hours
    length = 30
    (1..@num_of_slots).each do |i|
      time = @start_time.to_time + (length * 60 * (i - 1))

      puts "Iteration: #{i}\r\nHour: #{time.hour}\r\nMinutes: #{time.min}"

      slots.create! time: time, length: length
    end
  end
end
