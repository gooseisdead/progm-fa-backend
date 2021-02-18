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
    
    # def edit
    #     @player = Player.find(params[:id])
    # end

    def update
        @player = Player.find(params[:id])
        @player.update!(minor_league_status: params[:minor_league_status], team_id: params[:team_id])
        render json: @player
    end

    def create
        @player = Player.create(player_params)
        render json: @player
    end


    def destroy
        @player = Player.find(params[:id])
        @player.destroy!
        render json: {}
    end

    private
    
    def player_params
        params.permit(:id, :name, :position, :real_mlb_team, :years, :salary_per_year, :minor_league_status, :team_control, :team_id, :bid_id)
    end
end
