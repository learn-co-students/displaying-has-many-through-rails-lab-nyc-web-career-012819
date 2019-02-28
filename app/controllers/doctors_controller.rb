class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    @appointments = @doctor.appointments.inject({}) do |hash, appt|
      hash[appt.id] = {
        appt_datetime: appt.appointment_datetime.strftime("%B %-d, %Y at %H:%M"),
        patient: { 
          id: appt.patient_id,
          name: appt.patient.name
        }
      }
      hash
    end
  end

  def new
    @doctor = Doctor.new
  end

  def create
    doctor = Doctor.create(doctor_params)
    if doctor.valid?
      redirect_to doctor
    else
      redirect_to new_doctor_path
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end
