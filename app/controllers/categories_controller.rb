class CategoriesController < ApplicationController
    def index
        categories = Category.all 
        render json: CategorySerializer.new(categories, {include: [:budgets]})
    end

    def show 
        category = Category.find(params[:id])
        render json: category
    end
end
