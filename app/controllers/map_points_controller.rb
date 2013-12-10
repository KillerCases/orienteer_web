class MapPointsController < ApplicationController

	def index
		@checkpoint = MapPoint.where("map_id = '1'")
  		render json: @checkpoint
  	end

end
