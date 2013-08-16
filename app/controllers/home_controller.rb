class HomeController < ApplicationController
	def index
		@teams = Team.all
		@coaches = Coach.all
		@players = Player.all
		@scores = Score.all
		# @match_schedules = MatchSchedules.all
	end


	def create
		a = params [:a].to_i
		b = params [:b].to_i
	@total = a + b	
		end
	end
