class MobileUserController < ApplicationController

	def index
		# binding.pry
  		@mobile_user = User.where(:email => params[:email])
  		render json: @mobile_user
  	end

  	def create
		unless User.find_by_email(mobile_params[:email])
		    User.create(email: mobile_params[:email], name: mobile_params[:name], password: mobile_params[:password])
		end
  		# User.create!(:email => mobile_params[:email], :password =>mobile_params[:password])
  		render nothing: true
	end

	 private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def mobile_params
      params.permit(:email, :name, :password)
      # params.require(:result).permit(:score)
    end

end
