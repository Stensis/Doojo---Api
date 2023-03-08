class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index
      @categories = Category.all
      render json: @categories
    end
  
    def show
        @categories = set_category
        render json:@categories, status: :ok
    end
  
    def new
      @category = Category.new
    end
  
    def edit
        @categories = Category.find(params[:id])
    end
  
    def create
        @categories = Category.new(category_params)
    
        if @categories.save
          redirect_to @categories, notice: 'categories was successfully created.'
        else
          render :new
        end
      end
    
  
    def update
      if @category.update(category_params)
        redirect_to @category, notice: 'Category was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @category.destroy
      redirect_to categories_url, notice: 'Category was successfully destroyed.'
    end
  
    private
  
    def set_category
      @category = Category.find(params[:id])
    end
  
    def category_params
      params.require(:category).permit(:name, :created_at, :updated_at)
    end
end
