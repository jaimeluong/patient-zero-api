class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
        render json: @appointments
    end

    def show
        @appointment = Appointment.find(params[:id])
        render json: @appointment
    end

    def create
        @appointment = Appointment.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            age: params[:age],
            sex: params[:sex],
            medical_notes: params[:medical_notes]
        )
        render json: @appointment
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(
            first_name: params[:first_name],
            last_name: params[:last_name],
            age: params[:age],
            sex: params[:sex],
            medical_notes: params[:medical_notes]
        )
        render json: @appointment
    end

    def destroy
        @appointments = Appointment.all
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        render json: @appointments
    end
end
