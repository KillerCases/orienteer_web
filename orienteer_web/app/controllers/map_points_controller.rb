class MapPointsController < ApplicationController

	def index
		@checkpoint = MapPoint.where(:map_id => params[:map_id])
  		render json: @checkpoint
  	end

end
