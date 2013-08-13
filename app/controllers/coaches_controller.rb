class CoachesController < ApplicationController
	def index
		@coaches = Coach.all
	end

	def show
		@coach = Coach.find(params[:id])
	end

	def new
    	@coach = Coach.new
	end

	def create
		@coach = Coach.new(params[:coach])
		if @coach.save
		redirect_to coach_path(@coach)
			else
			render :new
			end
	end

	def edit

		@coach = Coach.find(params[:id])
	
	end

	def update
		@coach = Coach.find(params[:id])
		if @coach.update_attributes(params[:coach])
		redirect_to coach_path(@coach)
		else
			render :edit
		end

	end

	def destroy
	    @coach = Coach.find(params[:id])
		@coach.destroy
		redirect_to coaches_path
	end
end