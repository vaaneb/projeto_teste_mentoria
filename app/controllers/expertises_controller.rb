class ExpertisesController < ApplicationController
    before_action :set_Expertise, only: %i[ show update destroy ]
  
    # GET /Expertises
    def index
      @Expertises = Expertise.all
  
      render json: @Expertises
    end
  
    # GET /Expertises/1
    def show
      render json: @Expertise
    end
  
    # POST /Expertises
    def create
      @Expertise = Expertise.new(Expertise_params)
  
      if @Expertise.save
        render json: @Expertise, status: :created, location: @Expertise
      else
        render json: @Expertise.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /Expertises/1
    def update
      if @Expertise.update(Expertise_params)
        render json: @Expertise
      else
        render json: @Expertise.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /Expertises/1
    def destroy
      @Expertise.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_Expertise
        @Expertise = Expertise.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def Expertise_params
        params.fetch(:Expertise, {})
      end
  end
  