class JobsController < ApplicationController
	before_filter :authenticate_user!, :only => [:new]
	before_filter :authenticate_student!, :only => [:show]

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
