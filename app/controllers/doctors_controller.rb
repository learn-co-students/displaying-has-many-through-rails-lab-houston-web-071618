class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update]
  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end
  def create
    @doctor = Doctor.create(doctor_params)
    redirect_to @doctor
  end

  def edit
  end
  def update
    @doctor.update
    redirect_to @doctor
  end
  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end
  private
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

end
