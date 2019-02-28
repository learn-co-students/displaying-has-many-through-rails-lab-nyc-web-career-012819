class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    @patients = @doctor.patients
    @appointments = @doctor.appointments
  end

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

end
