class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  def index
    @patients = Patient.all
  end

  def show

  end

  def new
    @patient = Patient.new
  end
  def create
    @patient = Patient.create(patient_params)
    redirect_to @patient
  end

  def edit

  end
  def update

    @patient.update
    redirect_to @patient
  end
  def destroy
    @patient.destory
    redirect_to patients_path
  end
  private
  def set_patient
    @patient = Patient.find(params[:id])
  end
  def patient_params
    params.require(:patient).permit(:name, :age)
  end
end
