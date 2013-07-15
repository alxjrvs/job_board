require 'test_helper'
require 'Capybara'

class JobsTest < ActionDispatch::IntegrationTest
	
	test "user redirected after form submission" do 
		visit root_path
		click_link "I'm an employer"
		select 'Child Care', :from => 'job_category'
		fill_in 'job_title', with: "example"
		fill_in 'job_description', with: 'example description'
		select 'Back Bay', :from => 'job_location'
		select 2, :from => 'job_needed'
		fill_in "job_pay", with: 9
		fill_in 'job_hours', with: 6
		select 'Newspaper', :from => 'job_how'
		click_button "Post my job!"
		assert_response :success
	end

	test 'user can navigate from home page to form' do
		visit root_path
		click_link "I'm an employer"
		assert_equal new_job_path, current_path
	end
end


