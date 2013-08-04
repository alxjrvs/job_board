class JobsController < ApplicationController
before_filter :check_user_logged_in!, :only => [:show, :new,:index]
before_filter :check_student_logged_in!

# ensure user or admin logged in for these actions (:only option is optional)
# before_filter :check_student_logged_in!, :only => [:show]



	def index
		@jobs = Job.where(category: params[:category])
	end

	def new
		@job = Job.new
      
		respond_to do |format|
		  format.html
		  format.json { render json: @job}
		end
	end

	def create
		@job = Job.new(params[:job])
		
			if @job.save
				flash[:notice] = "Job Succesfully Posted"
				redirect_to @job
			else
				flash[:notice] = "Could not post your job.  Please make sure all fields are filled in!"
				redirect_to new_job_path
			end
			
	end

	def show
		@job = Job.find(params[:id])
	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:job])
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
	end

end

private
    def check_user_logged_in! # admin must be logged in
        authenticate_user!
    end
    def check_student_logged_in! # if admin is not logged in, user must be logged in
      if !user_signed_in?
        authenticate_student!
      end   
    end
