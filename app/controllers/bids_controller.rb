class BidsController < ApplicationController
        
    def show
        @bid = Bid.find(params[:id])
        render json: @bid
    end
    
    def index
        @bids = Bid.all
        render json: @bids
    end
    
    def new
        @bid = Bid.new
    end
    
    def edit
        @bid = Bid.find(params[:id])
    end
    
    def update
        @bid = Bid.find(params[:id])
        @Bid.update(bid_params)
    end

    def create
        @bid = Bid.create(bid_params)
        render json: @bid
    end

    private
    
    def bid_params
        params.permit(:id, :years, :salary_per_year, :user_bid_id, :player_id)
    end
end
