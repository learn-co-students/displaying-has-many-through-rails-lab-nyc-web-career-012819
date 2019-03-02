class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    render :index
  end

  def show
    find_doctor
    @appointments = @doctor.appointments
    @patients = @doctor.patients
    render :show
  end

  private

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end

end
