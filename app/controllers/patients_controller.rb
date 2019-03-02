class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    render :index
  end

  def show
    find_patient
    @appts = @patient.appointments
    render :show
  end

  private

  def find_patient
    @patient = Patient.find(params[:id])
  end

end
