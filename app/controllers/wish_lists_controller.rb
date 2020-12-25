class WishListsController < ApplicationController

    def create
        byebug
        wish_list = WishList.new(wish_list_params)
    end

    private

    def wish_list_params
        params.require(:wish_list).permit(:name)
    end

end
