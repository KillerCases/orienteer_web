class ExternalController < ApplicationController

	def index
	end

	def checkpoints
		  @checkpoint = MapPoint.where("map_id = '1'")
  		render json: @checkpoint
  	end

  	# def results
   #  @result = Result.new(params[:result])
	  #   if @result.save
	  #     redirect_to @result
	  #   else
	  #     # This line overrides the default rendering behavior, which
	  #     # would have been to render the "create" view.
	  #     render "new"
	  #   end
  	# end

  	def mobile_user
  		print request.request_parameters
  		email = request.request_parameters.slice(:email) 
  		mobile_user = User.find_or_create_by(:email => email)
  	end

  	def mobile_result
  		print request.request_parameters
  		score = request.request_parameters.slice(:score) 
  		mobile_result = Result.create(params[:score])
  	end
		
end
