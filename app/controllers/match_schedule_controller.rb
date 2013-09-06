
class MatchScheduleController < ApplicationController
	def index
		@match_schedule = MatchSchedule.all
	end

	def show
		@match_schedule = MatchSchedule.find(params[:id])
	end

	def new
    	@match_schedule = MatchSchedule.new
	end

	def create
		@match_schedule = MatchSchedule.new(params[:match_schedule])
		if @match_schedule.save
		redirect_to match_schedule_path(@match_schedule)
	else
		render :new
	end
	end

	def edit

		@match_schedule = MatchSchedule.find(params[:id])
	
	end

	def update
		@match_schedule = MatchSchedule.find(params[:id])
		if @match_schedule.update_attributes(params[:match_schedule])
		redirect_to match_schedule_path(@match_schedule)
		else
			render :edit
		end

	end

	def destroy
	    @match_schedule = MatchSchedule.find(params[:id])
		@match_schedule.destroy
		redirect_to teams_path
	end
end