class DoctorsController < ApplicationController

  # def index
  #   @doctors = Doctor.all.inject({}) do |hash, doctor|
  #     hash[doctor.id] = {
  #       name: doctor.name,
  #       patient_count: doctor.patients.count
  #     }
  #     hash
  #   end
  # end
  def index
    @doctors = Doctor.all
  end
  #
  # def show
  #   @doctor = Doctor.find(params[:id])
  #   patient_appt = @doctor.patients[1].appointments
  #   patient_appt.each do |k, appt|
  #     if k == appointment_datetime
  #       appt
  #     end
  #   end
  # end
  def show
    @doctor = Doctor.find(params[:id])
  end


private

def doctor_params
  params.require(:doctor).permit(:name, :department)
end



end
