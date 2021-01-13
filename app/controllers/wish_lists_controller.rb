class WishListsController < ApplicationController

    def index
        wish_lists = WishList.all
        render json: WishListSerializer.new(wish_lists).serializable_hash[:data].map{|hash| hash[:attributes]}
        # render json: WishListSerializer.new(wish_lists, include: [:items]).serializable_hash
    end
    
    def create
        wish_list = WishList.new(wish_list_params)

        if wish_list.save
            render json: wish_list
        end
    end

    def show
        wish_list = WishList.find(params[:id])
        render json: WishListSerializer.new(wish_list).serializable_hash[:data][:attributes]
        
    end

    def destroy
        wish_list = WishList.find(params[:id])
        wish_list.destroy
    end

    private

    def wish_list_params
        params.require(:wish_list).permit(:name)
    end

end
