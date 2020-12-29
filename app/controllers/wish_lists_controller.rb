class WishListsController < ApplicationController

    def index
        wish_lists = WishList.all
        render json: WishListSerializer.new(wish_lists)
    end
    
    def create
        wish_list = WishList.new(wish_list_params)

        if wish_list.save
            render json: wish_list
        end
    end

    private

    def wish_list_params
        params.require(:wish_list).permit(:name)
    end

end
