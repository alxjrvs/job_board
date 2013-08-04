class ApplicationController < ActionController::Base
  protect_from_forgery


   def after_sign_in_path_for(resource_or_scope)
  case resource_or_scope
    when :user, User
      new_job_path
    when :student, Student
      categories_path
    else
      root_path
  end
end
  
  #  def after_sign_up_path_for(user)
  #   new_job_path
  # end
  
end
