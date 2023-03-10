class BlogsController < ApplicationController
    before_action :set_blog, only: [:show, :edit, :update, :destroy]

    def index
      @blogs = Blog.all
      render json: @blogs
    end
  
    def show
        @blogs = set_blog
        render json:@blogs, status: :ok

    #   @blogs = Blog.find(params[:id])
    end
    
    def new
      @blog = Blog.new
    end
  
    def edit
      @blog = Blog.find(params[:id])
    end
  
    def create
      @blog = Blog.new(blog_params)
  
      if @blog.save
        redirect_to @blog, notice: 'Blog was successfully created.'
      else
        render :new
      end
    end

    # cancanccan
    # def update
    #     @blog = Blog.find(params[:id])
    #     authorize! :update, @blog
    #     if @blog.update(blog_params)
    #       redirect_to @blog
    #     else
    #       render 'edit'
    #     end
    # end
  
    def update
      if @blog.update(blog_params)
        redirect_to @blog, notice: 'Blog was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @blog.destroy
      redirect_to blogs_url, notice: 'Blog was successfully destroyed.'
    end
  
    private
  
    def set_blog
      @blog = Blog.find(params[:id])
    end
  
    def blog_params
      params.require(:blog).permit(:title, :body, :published_at, :user_id, :category_id,:img,:created_at, :updated_at)
    end
end
