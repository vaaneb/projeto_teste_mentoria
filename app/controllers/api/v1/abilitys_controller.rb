module Api::V1

  class AbilitysController < ApiController
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
        @Ability = Ability.new(ability_params)
    
        if @Ability.save
          render json: @Ability, status: :created
        else
          render json: @Ability.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /Abilitys/1
      def update
        if @Ability.update(ability_params)
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
        def ability_params
          params.permit(:name, :usuario_id)
        end 

      end
end