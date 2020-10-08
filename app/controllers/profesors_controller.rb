class ProfesorsController < ApplicationController
    def index
        render json: Profesor.all
    end
end
