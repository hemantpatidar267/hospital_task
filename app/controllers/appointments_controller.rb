class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = current_pateint.appointments.new(appointment_params)
    UserMailer.welcome_email(current_pateint).deliver_now
    if @appointment.save!
      redirect_to @appointment
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    @appointment = Appointment.all
  end

  private

  def appointment_params
    params.require(:appointment).permit(:name, :age, :address, :disease, :doctor_id)
  end
end
