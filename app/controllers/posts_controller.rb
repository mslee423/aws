class PostsController < ApplicationController
    def new
    end
    def create
        @post=Post.create(title: params[:post][:title], date: params[:post][:date])
        redirect_to '/posts' 
    end
    def index
       @post=Post.all 
       @p = Post.new
    end
    def show
        @post=Post.find(params[:id])
        @review=Review.where(:post_id => params[:id])
        @r = Review.new
    end
    def update
        # @review=Review.create(todo: params[:input_todo], post_id: params[:id])
        # redirect_to "/posts/#{params[:id]}"
    end
    def destroy
        @post=Post.find(params[:id])
        @post.destroy
        redirect_to '/posts'
    end
end
