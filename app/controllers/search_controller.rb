class SearchController < ApplicationController
  def index
  	@players = Player.where('name like ?',"%#{params[:q]}%")
  end
end
