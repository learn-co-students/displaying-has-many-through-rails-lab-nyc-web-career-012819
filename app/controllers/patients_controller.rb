class PatientsController < ApplicationController
  def index
    patients = Patient.all
    @patients = patients.inject({}) do |hash, patient|
      hash[patient.id] = {
        name: patient.name,
        age: patient.age,
        appt_count: patient.appointments.count
      }
      hash
    end
  end

  def show
    @patient = Patient.find(params[:id])
    @appointments = @patient.appointments.inject({}) do |hash, appt|
      hash[appt.id] = {
        appt_datetime: appt.appointment_datetime.strftime("%B %-d, %Y at %H:%M"),
        doctor: {
          id: appt.doctor_id,
          name: appt.doctor.name
        }
      }
      hash
    end
  end

  def new
  end

  def edit
  end
end
