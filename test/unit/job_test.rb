require 'test_helper'

class JobTest < ActiveSupport::TestCase
  
  should validate_presence_of(:category)
  should validate_presence_of(:title)
  should validate_presence_of(:description)
  should validate_presence_of(:title)
  should validate_presence_of(:location)
  should validate_presence_of(:needed)
  should validate_presence_of(:how)
  should validate_presence_of(:start_date)
  should belong_to(:user)
  should_not allow_value(7).for(:pay)
  should allow_value(8).for(:pay)
  should validate_presence_of(:pay_type)
    

  test "Job won't save without attributes" do 
  	job = Job.new
  	assert !job.save, "saved empty form"
  end
end



