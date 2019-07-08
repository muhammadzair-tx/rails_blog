class PostsController < ApplicationController
    def index
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            # return or render the view 
            render "new"
        end
    end
private
    def post_params
        # it will prevent user from any Malicious activity 
        # need to more dig in for now its just like php security functions
        params.require(:post).permit(:title,:body)
    end
end
