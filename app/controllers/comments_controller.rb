class CommentsController < ApplicationController
    def index
      @comments = Comment.all
    end
  
    def show
      @comment = Comment.find(params[:id])
    end
  
    def new
      @comment = Comment.new
    end
  
    def create
      comment = Comment.new(comment_params)
      if comment.valid?
        comment.save
        redirect_to picture_path
      else
        render :new
      end
    end
  
    def edit
      @comment = Comment.find(params[:id])
    end
  
    def update
      comment = Comment.find(params[:id])
      if comment.update(comment_params)
        redirect_to comments_path(comment)
      else
        render :edit
      end
    end
  
    def destroy
      Comment.find(params[:id]).destroy
    end
  
  
    private
  
    def comment_params
        params.require(:comment).permit(:content, :picture_id, :user_id)
    end
  end