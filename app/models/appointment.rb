class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :pateint
end
