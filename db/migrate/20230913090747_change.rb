class Change < ActiveRecord::Migration[7.0]
  def change
    add_references :appointments, :doctor, column: :doctor_id
    add_references :appointments, :pateint, column: :pateint_id
  end
end
