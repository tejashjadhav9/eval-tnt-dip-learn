class PatientsController < ApplicationController
    def index
        @patients=Patient.all
    end
    def show
        @patient=Patient.find(params[:id])
    end

    def new
        @patient=Patient.new
    end

    def create
        @patient=Patient.new(patient_params)
        if @patient.save
         redirect_to @patient
        else
         render :new , status: :unprocessable_entity
        end
    end

    def edit
        @patient=Patient.find(params[:id])
    end

    def update
        @patient=Patient.find(params[:id])
        if @patient.update(patient_params)
         redirect_to @patient
        else
         render :edit , status: :unprocessable_entity
        end
    end

    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy

        redirect_to root_path, status: :see_other
    end

    private
    def patient_params
        params.require(:patient).permit(:first_name,:last_name,:phone_no,:email,:address,:city,:age,:gender)  
    end
end
