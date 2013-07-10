class JobsController < ApplicationController
	def index
	end

	def new
		@job = Job.new
      
		respond_to do |format|
		  format.html
		  format.json { render json: @job}
		end
	end

	def create
	end

	def show
		@job = Job.find(params[:id])

		respond_to do |format|
			format.html
			format.json { render json: @job}
		end

	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
	end

	def destroy
	end


end
