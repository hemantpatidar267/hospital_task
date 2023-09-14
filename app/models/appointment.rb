class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :pateint

  def self.ransackable_attributes(auth_object = nil)
    ["address", "age", "created_at", "disease", "doctor_id", "id", "name", "pateint_id", "updated_at"]
  end
end
