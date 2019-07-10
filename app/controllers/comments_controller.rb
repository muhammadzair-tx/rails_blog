class CommentsController < ApplicationController
 
    def create
        @post = Post.find(params[:post_id])
        @comment = comments.create(params[:comment]).permit(:name , :message)
        redirect_to post_path(@post)
    end
    
    def destroy

    end

end
