class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update, :destroy]

    def index
      @comments = Comment.all
    end
  
    def show
    end
  
    def new
      @comment = Comment.new
    end
  
    def edit
    end

    # def create
    #     @blog = Blog.find(params[:blog_id])
    #     @comment = @blog.comments.create(comment_params)
    #     redirect_to blog_path(@blog)
    # end
  
    def create
      @comment = Comment.new(comment_params)
  
      if @comment.save
        redirect_to @comment.post, notice: 'Comment was successfully created.'
      else
        render :new
      end
    end
  
    def update
      if @comment.update(comment_params)
        redirect_to @comment.post, notice: 'Comment was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @comment.destroy
      redirect_to @comment.post, notice: 'Comment was successfully destroyed.'
    end
  
    private
  
    def set_comment
      @comment = Comment.find(params[:id])
    end
  
    def comment_params
      params.require(:comment).permit(:body, :blog_id, :user_id, :created_at, :updated_at)
    end
end
