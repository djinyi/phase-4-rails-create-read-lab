class PlantsController < ApplicationController

    def index
        plants = Plant.all 
        render json: plants
    end

    def create
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant, status: :created
    end

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

end
