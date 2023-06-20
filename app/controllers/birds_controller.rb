class BirdsController < ApplicationController

    def index
        birds = Bird.all
        render json: birds

    end
    # GET /birds/:id

    def show
        bird = Bird.find_by(id: params[:id])
        if bird 
            render json: bird
        else
            render json: {error: "Bird not found, please search the right bird"}, status: :not_found
        end

    end

end
