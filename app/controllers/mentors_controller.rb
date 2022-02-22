class MentorsController < ApplicationController
    before_action :set_Mentor, only: %i[ show update destroy ]
  
    # GET /mentors
    def index
      @mentors = Mentor.all
  
      render json: @mentors
    end
  
    # GET /mentors/1
    def show
      render json: @Mentor
    end
  
    # POST /mentors
    def create
      @Mentor = Mentor.new(Mentor_params)
  
      if @Mentor.save
        render json: @Mentor, status: :created, location: @Mentor
      else
        render json: @Mentor.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /mentors/1
    def update
      if @Mentor.update(Mentor_params)
        render json: @Mentor
      else
        render json: @Mentor.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /mentors/1
    def destroy
      @Mentor.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_Mentor
        @Mentor = Mentor.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def Mentor_params
        params.fetch(:Mentor, {})
      end
  end
  