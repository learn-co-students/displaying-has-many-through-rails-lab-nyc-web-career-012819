class AppointmentsController < ApplicationController

  def index
    render :show
  end

  def show
    @appointment = Appointment.find(params[:id])
    render :show
  end

end
