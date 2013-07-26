class JobsController < ApplicationController

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
				flash[:notice] = "save succesful"
				redirect_to @job
			else
				flash[:notice] = "did not save"
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
