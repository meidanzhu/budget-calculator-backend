class ItemsController < ApplicationController
    def index
        items = Item.all 
        render json: ItemSerializer.new(items)
    end

    def show 
        item = Item.find(params[:id])
        render json: ItemSerializer.new(item)
    end

    def create
        item = Item.new(item_params)

        if Item.save
            render json: ItemSerializer.new(item)
        else
            render json: {error: 'could not be created'}
        end
        
    end

    def update
        item = Item.find(params[:id])
        if Item.update(Item_params)
            render json: ItemSerializer.new(item)
        else
            render json: {error: 'could not be updated'}
        end
    end 

    def destroy
        item = Item.find(params[:id])
        Item.destroy
        render json: {message: "Successfully deleted #{item.description}!"}
    end

    private

    def Item_params
        params.require(:item).permit(:description, :name, :price)
    end
end
