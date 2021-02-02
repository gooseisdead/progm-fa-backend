class PlayersController < ApplicationController
    def show
        @player = Player.find(params[:id])
        render json: @player
    end
    
    def index
        @players = Player.all
        render json: @players
    end
    
    def new
        @player = Player.new
    end
    
    def edit
        @player = Player.find(params[:id])
    end
    
    def update
        @player = Player.find(params[:id])
        @Player.update(player_params)
    end

    def create
        @player = Player.create(player_params)
        render json: @player
    end

    private
    
    def player_params
        params.permit(:id, :name, :category)
    end
end
