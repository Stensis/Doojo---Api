class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update, :destroy]

     # cancancan 
    #  load_and_authorize_resource

    def index
      @comments = Comment.all
      render json: @comments
    end
  
    def show
        @comments = set_comment
        render json:@comments, status: :ok
    end
  
    def new
      @comment = Comment.new
    end
  
    def edit
        @comments = Comment.find(params[:id])
    end
  
    def create
        @comments = Comment.new(comment_params)
    
        if @comments.save
          redirect_to @comments, notice: 'comment was successfully created.'
        else
          render :new
        end
      end

      def update
        @comment = Comment.find(params[:id])
        authorize! :update, @comment
        if @comment.update(comment_params)
          redirect_to @comment
        else
          render 'edit'
        end
      end
  
    #   def update
    #     if @comment.update(comment_params)
    #       redirect_to @comment, notice: 'comment was successfully updated.'
    #     else
    #       render :edit
    #     end
    #   end
  
    def destroy
        @comment.destroy
        redirect_to comments_url, notice: 'Comment was successfully destroyed.'
    end
  
    private
  
    def set_comment
      @comment = Comment.find(params[:id])
    end
  
    def comment_params
      params.require(:comment).permit(:body, :blog_id, :user_id, :created_at, :updated_at)
    end
end
