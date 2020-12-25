class WishListsController < ApplicationController

    def index
        render json: WishList.all
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
