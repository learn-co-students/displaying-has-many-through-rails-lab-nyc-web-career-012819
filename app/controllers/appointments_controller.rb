class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
    
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

end
