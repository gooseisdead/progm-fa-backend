class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        render json: @user
    end
    
    def index
        @users = User.all
        render json: @users
    end
    
    def new
        @user = User.new
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        @User.update(user_params)
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    private
    
    def user_params
        params.permit(:id, :username, :team, :bid_id)
    end
end
