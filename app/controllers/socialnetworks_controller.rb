class SocialnetworksController < ApplicationController
    before_action :set_Socialnetworks, only: %i[ show update destroy ]
  
    # GET /socialnetworks
    def index
      @socialnetworks = Socialnetwork.all
  
      render json: @socialnetworks
    end
  
    # GET /socialnetworks/1
    def show
      render json: @socialnetwork
    end
  
    # POST /socialnetworks
    def create
      @socialnetwork = Socialnetwork.new(socialnetwork_params)
  
      if @socialnetwork.save
        render json: @socialnetwork, status: :created, location: @socialnetwork
      else
        render json: @socialnetwork.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /socialnetworks/1
    def update
      if @socialnetwork.update(socialnetwork_params)
        render json: @socialnetwork
      else
        render json: @socialnetwork.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /socialnetworks/1
    def destroy
      @socialnetwork.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_socialnetwork
        @socialnetwork = Socialnetwork.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def socialnetwork_params
        params.fetch(:socialnetwork, {})
      end
  end
  