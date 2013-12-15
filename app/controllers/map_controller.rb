class MapController < ApplicationController

	def index
		@map = Map.where(:city => params[:city])
  		render json: @map	
	end

end
