class OpportunitiesController < ApplicationController
    before_action :set_opportunity, only: [:show, :edit, :update, :destroy]
    
    def index
        @opportunities = Opportunity.all
    end

    def show
    end

    def new
        @company = Company.find(params[:company_id])
        @opportunity = Opportunity.new
    end
    
    def edit
    end
    
    def create
        @company = Company.find(params[:company_id])
        @opportunity = Opportunity.new(opportunity_params)
        @opportunity.user = current_user
        if @opportunity.save
          flash[:success] = "Object successfully created"
          redirect_to @opportunity
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    
    def update
        if @opportunity.update(opportunity_params)
          redirect_to @opportunity, notice: 'opportunity was successfully updated.'
        else
          render :edit
        end
    end
    
    def destroy
        @opportunity.destroy
        redirect_to opportunitys_url, notice: 'opportunity was successfully destroyed.'
    end

    private

    def set_opportunity
      @opportunity = Opportunity.find(params[:id])
    end
  
    def pet_params
      params.require(:opportunity).permit(:number, :date, :hour, :internal_code)
    end
end
