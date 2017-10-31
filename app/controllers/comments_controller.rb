class CommentsController < ApplicationController 
    def new 
        @comment = Comment.new
    end 
    
    def create
        @comment = Comment.new(content: params[:comment][:content])
        @comment.user = current_user
        @comment.event_id = params[:event_id]
        @comment.save
        redirect_to event_path(params[:event_id])
    end

    def destroy
        @comment = Comment.find(params[:id])
        event_id = @comment.event_id
        @comment.destroy 
        redirect_to event_path(event_id)
    end

end 