class Pateint < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments, dependent: :delete_all
  has_many :doctors, through: :appointments, dependent: :delete_all

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "id", "name", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end


  def self.ransackable_associations(auth_object = nil)
    ["appointments", "doctors"]
  end

end
