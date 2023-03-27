class HerosController < ApplicationController

    # GET heros
    def index
        heroes= Hero.all
        render json: heroes, status: :ok
    end

    # GET heros with id
    def show
        hero = Hero.find(params[:id])
        if hero
            render json: hero, status: :ok
        else
            render json: {error:"Hero not found"}, status: :not_found
        end
    end
end
