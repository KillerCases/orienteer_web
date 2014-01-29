class DashboardController < ApplicationController
	
	before_action :authenticate_user!
	helper_method :sort_column, :sort_direction
	# require 'googlestaticmap'


	def index
  	@maps = Map.search_for(params[:q])
  	end

	  def show
	  	# @maps = Map.all
	    @map = Map.find(params[:id])
	    @results = Map.find(params[:id]).results.order(sort_column + " " + sort_direction)
	    @test = 'test with instance variable again'
	    @display_map = GoogleStaticMap.new(:zoom => 12, :width => 640)


		# Loop through coordinates and display on map
	    @map.map_points.each do |marker|
	    	# If marker is 10 points it shows blue
	    	if marker.value == 10
	    	@display_map.markers << MapMarker.new(:color => "blue", :location => MapLocation.new(:latitude => marker.latitude, :longitude => marker.longitude))
	    	# Other marker is red
	    	else
	    	@display_map.markers << MapMarker.new(:color => "red", :location => MapLocation.new(:latitude => marker.latitude, :longitude => marker.longitude))
	    	end	
	 	end
	  	@image_url = @display_map.url(:auto)
	 

	  end

	  def distance

	  end


    def map_params
      params.require(:map).permit(:name, :city, :country)
  	end

  private

  def sort_column
  	Result.column_names.include?(params[:sort]) ? params[:sort] : "score"
  end

  def sort_direction
  	%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
