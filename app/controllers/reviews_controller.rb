class ReviewsController < ApplicationController
	
	def index
	end
	def create
		@review = Review.new(new_review)
		@review.ip = request.remote_ip
		if @review.save
		  	respond_to do |format|
		  		format.js { render 'create.js.erb'}
		  	end
		end
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy
	end


	def new_review
		params.require(:review).permit(:user, :description, :rating, :app_id)
	end
end
