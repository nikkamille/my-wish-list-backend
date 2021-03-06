class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: ItemSerializer.new(items).serializable_hash[:data].map{|hash| hash[:attributes]}
    end
    
    def create
        item = Item.new(item_params)

        if item.save
            render json: item 
        end
    end

    def show
        item = Item.find(params[:id])
        render json: ItemSerializer.new(item).serializable_hash[:data][:attributes]
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :url, :image_url, :wish_list_id)
    end

end
