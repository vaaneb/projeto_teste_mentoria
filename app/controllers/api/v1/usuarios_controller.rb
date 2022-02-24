module Api::V1

   class UsuariosController < ApiController
      before_action :set_usuario, only: %i[ show update destroy ]

      # GET /usuarios
      def index
        @usuarios = Usuario.all

        render json: @usuarios
      end

      # GET /usuarios/1
      def show
        render json: @usuario, status: 'Sucess', message: 'Client founded'
      end

      # POST /usuarios
      def create
        @usuario = Usuario.new(usuario_params)

        if @usuario.save
          render json: @usuario, status: :created
        else
          render json: @usuario.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /usuarios/1
      def update
        if @usuario.update(usuario_params)
          render json: @usuario
        else
          render json: @usuario.errors, status: :unprocessable_entity
        end
      end

      # DELETE /usuarios/1
      def destroy
        @usuario.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_usuario
          @usuario = Usuario.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def usuario_params
          params.permit(:name, :surname, :email)
          
        end

      end
end