class ResultController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index
		
		

	end

	def create
      # binding.pry
      user_id = User.find_by_email(result_params[:email]).id
  		Result.create(:score => result_params[:score], :map_id =>result_params[:map_id], :user_id => user_id)
  		render nothing: true
	end

	 private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def result_params
      params.permit(:score, :map_id, :user_id, :email)
      # params.require(:result).permit(:score)
    end
end

