class PatientsController < ApplicationController
    def index
        @patients = Patient.all
        render json: @patients
    end

    def show
        @patient = Patient.find(params[:id])
        render json: @patient
    end

    def create
        @patient = Patient.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            age: params[:age],
            sex: params[:sex],
            medical_notes: params[:medical_notes]
        )
        render json: @patient
    end

    def update
        @patient = Patient.find(params[:id])
        @patient.update(
            first_name: params[:first_name],
            last_name: params[:last_name],
            age: params[:age],
            sex: params[:sex],
            medical_notes: params[:medical_notes]
        )
        render json: @patient
    end

    def destroy
        @patients = Patient.all
        @patient = Patient.find(params[:id])
        @patient.destroy
        render json: @patients
    end
end
