class Doctor < ApplicationRecord
  has_many :appointments, dependent: :delete_all
  has_many :pateints, through: :appointments, dependent: :delete_all

  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "id", "name", "specialist", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["appointments", "pateints"]
  end
end
