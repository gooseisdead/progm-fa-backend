class UserBidsController < ApplicationController
    def show
        @user_bid = UserBid.find(params[:id])
        render json: @user_bid
    end
    
    def index
        @user_bids = UserBid.all
        render json: @user_bids
    end
    
    def new
        @user_bid = UserBid.new
    end
    
    def edit
        @user_bid = UserBid.find(params[:id])
    end
    
    def update
        @user_bid = UserBid.find(params[:id])
        @UserBid.update(user_bid_params)
    end

    def create
        @user_bid = UserBid.create(user_bid_params)
        render json: @user_bid
    end

    private
    
    def user_bid_params
        params.permit(:id, :name, :category)
    end
end
