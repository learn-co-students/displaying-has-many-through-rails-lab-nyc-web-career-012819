class DoctorsController < ApplicationController

  def index
    @doctors = Docter.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

end
