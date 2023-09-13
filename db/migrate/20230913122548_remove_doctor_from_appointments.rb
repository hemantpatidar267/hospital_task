class RemoveDoctorFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :doctor, :string
  end
end
