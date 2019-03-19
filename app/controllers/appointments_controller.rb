class AppointmentsController < ApplicationController

  def show
    @appt = Appointment.find(params[:id])
  end



  private

  def appt_params
    params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
  end

end
