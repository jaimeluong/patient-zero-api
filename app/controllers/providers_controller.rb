class ProvidersController < ApplicationController
    def index
        @providers = Provider.all
        render json: @providers
    end

    def show
        @provider = Provider.find(params[:id])
        render json: @provider
    end

    def create
        @provider = Provider.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            position: params[:position]
        )
        render json: @provider
    end

    def update
        @provider = Provider.find(params[:id])
        @provider.update(
            first_name: params[:first_name],
            last_name: params[:last_name],
            position: params[:position]
        )
        render json: @provider
    end

    def destroy
        @providers = Provider.all
        @provider = Provider.find(params[:id])
        @provider.destroy
        render json: @providers
    end
end
