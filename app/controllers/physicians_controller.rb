class PhysiciansController < ApplicationController

    def index
        @physicians=Physician.all
    end

    def show
        @physician=Physician.find(params[:id])
    end

    def new
        @physician=Physician.new
    end

    def create
        @physician=Physician.new(phy_params)
        if @physician.save 
        redirect_to @physician
        else
        render :new , status: :unprocessable_entity
        end
    end

    def edit
        @physician=Physician.find(params[:id])
    end

    def update
        @physician=Physician.new
        if @physician.update(phy_params)
        redirect_to @physician
        else
        render :edit , status: :unprocessable_entity
        end
    end

    def destroy
        @physician = Physician.find(params[:id])
        @physician.destroy

        redirect_to root_path, status: :see_other
    end

    private
    def phy_params
        params.require(:physician).permit(:first_name,:last_name,:tel_no,:email,:gender) 
    end
end
