class Api::V1::Academico::ProfessoresController < ApplicationController
  before_action :set_professor, only: [:show, :update, :destroy]

    # GET /api/v1/academico/professores
    def index
      @professores = Professor.all
      json_response(@professores)
    end

    # POST /api/v1/academico/professores
    def create
      @professor = Professor.create!(professor_params)
      json_response(@professor, :created)
    end

    # GET /api/v1/academico/professores/:id
    def show
      json_response(@professor)
    end

    # PUT /api/v1/academico/professores/:id
    def update
      @professor.update(professor_params)
      head :no_content
    end

    # DELETE /api/v1/academico/professores/:id
    def destroy
      @professor.destroy
      head :no_content
    end

    private

    def professor_params
      # whitelist params
      params.permit(:nome, :endereco, :telefone, :email)
    end

    def set_professor
      @professor = Professor.find(params[:id])
    end
  end
