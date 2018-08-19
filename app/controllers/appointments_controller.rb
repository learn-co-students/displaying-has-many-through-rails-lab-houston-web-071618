class AppointmentsController < ApplicationController
  # before_action :set_appointment, only: [:show, :edit, :update]

  def index
    @appointments = Appointment.all
  end
  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end
  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to @appointment
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end
  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to @appointment
  end
  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to doctors_path
  end
  private
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
  end
end
