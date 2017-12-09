class ReviewsController < ApplicationController
    
    def create
        @review=Review.create(todo: params[:review][:todo],post_id: params[:review][:post_id])
        redirect_to :back
    end
end
