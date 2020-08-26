class CategoriesController < ApplicationController
    def index
        categories = Category.all 
        render json: CategorySerializer.new(categories, {include: [:expenses]})
    end

    def show 
        category = Category.find(params[:id])
        render json: category
    end
end
