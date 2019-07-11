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
            # It is not necessary to pass all the attributes to update. For example, if @article.update(title: 'A new title') was called, 
            # Rails would only update the title attribute, leaving all other attributes untouched.
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
            # Notice that inside the create action we use render instead of redirect_to when save returns false.
            # The render method is used so that the @article object is passed back to the new template when it is rendered.
            # This rendering is done within the same request as the form submission, 
            # whereas the redirect_to will tell the browser to issue another request.
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to posts_path
    end

private
    def post_params
        params.require(:post).permit(:title,:body)
        #white listing called strong parameter
    end
end
