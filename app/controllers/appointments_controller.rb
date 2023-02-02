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
            start_date: params[:start_date],
            end_date: params[:end_date],
            category: params[:category],
            description: params[:description]
        )
        render json: @appointment
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(
            start_date: params[:start_date],
            end_date: params[:end_date],
            category: params[:category],
            description: params[:description]
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
