class CompaniesController < ApplicationController
    before_action :set_pet, only: [:show, :edit, :update, :destroy]
    
    def index
        @companies = Company.all
    end

    def show
    end

    private

    def set_pet
      @company = Company.find(params[:id])
    end
  
    def pet_params
      params.require(:company).permit(:name, :contact, :photo_url)
    end

end
