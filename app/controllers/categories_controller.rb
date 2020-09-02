class CategoriesController < ApplicationController
    
    def index
        categories = Category.all
        options = { 
            include: [:budgets]
        }
        render json: CategorySerializer.new(categories, options)
    end

    def show
        category = Category.find(params[:id])
        render json: category
    end
  
  end
  
