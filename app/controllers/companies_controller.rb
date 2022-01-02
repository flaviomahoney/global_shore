class CompaniesController < ApplicationController
    before_action :set_pet, only: [:show, :edit, :update, :destroy]
    
    def index
        @companies = Company.all
    end

    def show
    end

    def new
        @company = Company.new
    end
    
    def edit
    end
    
      def create
        @company = Company.new(company_params)
        @company.user = current_user
        if @company.save
          flash[:success] = "Object successfully created"
          redirect_to @company
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
      end
    
      def update
        if @company.update(company_params)
          redirect_to @company, notice: 'company was successfully updated.'
        else
          render :edit
        end
      end
    
      def destroy
        @company.destroy
        redirect_to companys_url, notice: 'company was successfully destroyed.'
      end

    private

    def set_pet
      @company = Company.find(params[:id])
    end
  
    def pet_params
      params.require(:company).permit(:name, :contact, :photo_url)
    end

end
