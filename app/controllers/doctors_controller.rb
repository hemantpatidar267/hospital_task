class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to @doctor
    else
      render :new, status: :unprocessable_entity
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :specialist, :address)
  end

end
