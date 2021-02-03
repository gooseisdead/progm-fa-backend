class TeamsController < ApplicationController
    def show
        @team = Team.find(params[:id])
        render json: @team
    end
    
    def index
        @teams = Team.all
        render json: @teams
    end
    
    def new
        @team = Team.new
    end
    
    def edit
        @team = Team.find(params[:id])
    end
    
    def update
        @team = Team.find(params[:id])
        @Team.update(team_params)
    end

    def create
        @team = Team.create(team_params)
        render json: @team
    end

    private
    
    def team_params
        params.permit(:id, :name, :logo, :total_salary, :playoff_discount)
    end
end
