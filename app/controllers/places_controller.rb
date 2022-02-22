class PlacesController < ApplicationController
    before_action :set_Place, only: %i[ show update destroy ]
  
    # GET /places
    def index
      @places = Place.all
  
      render json: @places
    end
  
    # GET /places/1
    def show
      render json: @Place
    end
  
    # POST /places
    def create
      @Place = Place.new(Place_params)
  
      if @Place.save
        render json: @Place, status: :created, location: @Place
      else
        render json: @Place.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /places/1
    def update
      if @Place.update(Place_params)
        render json: @Place
      else
        render json: @Place.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /places/1
    def destroy
      @Place.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_Place
        @Place = Place.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def Place_params
        params.fetch(:Place, {})
      end
  end
  