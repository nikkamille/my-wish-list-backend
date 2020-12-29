class ItemsController < ApplicationController

    def index
        render json: Item.all
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
