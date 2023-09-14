class Doctor < ApplicationRecord
  has_many :appointments
  has_many :pateints, through: :appointments

  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "id", "name", "specialist", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["appointments", "pateints"]
  end
end
