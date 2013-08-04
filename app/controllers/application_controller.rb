class ApplicationController < ActionController::Base
  protect_from_forgery

   def after_sign_in_path_for(student)
    categories_path
  end

   def after_sign_up_path_for(student)
    categories_path
  end

  def after_sign_in_path_for(user)
    new_job_path
  end
  
   def after_sign_up_path_for(user)
    new_job_path
  end
  
end
