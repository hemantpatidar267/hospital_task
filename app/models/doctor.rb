class Doctor < ApplicationRecord
  has_many :appointments
  has_many :pateints, through: :appointments
end
