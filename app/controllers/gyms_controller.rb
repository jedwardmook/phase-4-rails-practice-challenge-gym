class GymsController < ApplicationController

    def show
        gym = Gym.find_by(id: params[:id])
        if gym
            render json: gym
        else
            render json: { error: "Gym not found"}, status: :not_found
        end
    end
    
    def destroy
        gym = Gym.find_by(id: params[:id])
        if gym
            gym.destroy
            status :no_head
        end
        
        
    end

end