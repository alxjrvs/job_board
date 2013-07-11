require 'test_helper'
require 'Capybara'

class JobsTest < ActionDispatch::IntegrationTest
   should_not allow_value(nil).for(:description)
   test "user can navigate to the form from home page" do
   	visit root_path
   	click_on 'form'
   	assert_equal current_path, new_job_path
   end
   
end
