class PowersController < ApplicationController

    # GET Powers
    def index
        powers= Power.all
        render json: powers
    end

    # GET powers by id
    def show
        power = Power.find(params[:id])
        if power
            render json:power,  status: :ok
        else
            render json:{error:"power not found"}, status: :not_found
        end
    end

    # PATCH(UPDATE) Powers
    def update
        power =Power.find(params[:id])
        if power
            power.update!(power_params)
            render json:  power

        else
            render json: {error: "Power not found"}, status: :not_found
        end
    end

    private

        def power_params
            params.permit(:name, :description)
        end
end
