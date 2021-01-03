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

    private

    def item_params
        params.require(:item).permit(:name, :price, :url, :image_url, :wish_list_id)
    end

end
