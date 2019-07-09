class PostsController < ApplicationController
    def index
        @posts = Post.all.order("created_at DESC")
    end
    
    def show
        @post = Post.find(params[:id])
    end
    def new
        @post = Post.new
    end

    def edit
        @post = Post.find(params[:id])
    end
    
    def update
       
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else
            render "edit"
        end
    end

    def create
        @post = Post.new(post_params)#mass assignment
        if @post.save
            redirect_to @post
        else
            # return or render the view 
            render "new"
        end
    end
private
    def post_params
        params.require(:post).permit(:title,:body)
        #white listing strong parameter
    end
end
