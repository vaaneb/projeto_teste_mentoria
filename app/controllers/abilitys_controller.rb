class AbilitysController < ApplicationController
    before_action :set_Ability, only: %i[ show update destroy ]
  
    # GET /Abilitys
    def index
      @Abilitys = Ability.all
  
      render json: @Abilitys
    end
  
    # GET /Abilitys/1
    def show
      render json: @Ability
    end
  
    # POST /Abilitys
    def create
      @Ability = Ability.new(Ability_params)
  
      if @Ability.save
        render json: @Ability, status: :created, location: @Ability
      else
        render json: @Ability.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /Abilitys/1
    def update
      if @Ability.update(Ability_params)
        render json: @Ability
      else
        render json: @Ability.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /Abilitys/1
    def destroy
      @Ability.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_Ability
        @Ability = Ability.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def Ability_params
        params.fetch(:Ability, {})
      end
  end
  