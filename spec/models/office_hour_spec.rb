require 'spec_helper'

describe OfficeHour do
  it "should create the given number of slots on model creation" do
    user = User.create!
    time_length = 30
    today = DateTime.new(2013, 1, 1)
    start_time = DateTime.new(2013, 1, 1, 9, 0, 0, '+0')
    num_of_slots = 8

    oh = user.hours.create! day: today, num_of_slots: num_of_slots, start_time: start_time

    oh.slots.length.should eq num_of_slots

    random_slot = oh.slots.sample
    first_slot  = oh.slots.first
    second_slot = oh.slots[1]
    third_slot  = oh.slots[2]
    random_slot.length.should eq time_length

    # random slot's date is on the the right day
    random_slot.time.day.should eq today.day
    random_slot.time.month.should eq today.month
    random_slot.time.year.should eq today.year

    # first slot should be at the first time
    first_slot.time.hour.should eq start_time.hour
    first_slot.time.min.should eq start_time.min
    first_slot.length.should eq time_length

    # second slot should be at the second time

    second_slot.time.hour.should eq start_time.hour
    second_slot.time.min.should eq 30
    second_slot.length.should eq time_length

    third_slot.time.hour.should eq start_time.hour + 1
    third_slot.time.min.should eq 0
    third_slot.length.should eq time_length
  end
end
