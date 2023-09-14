class Change < ActiveRecord::Migration[7.0]
  def change
    # add_references :appointments, :doctor, column: :doctor_id
    # add_references :appointments, :pateint, column: :pateint_id
    add_column :appointments, :doctor_id, :integer
    add_index :appointments, :doctor_id
    add_column :appointments, :pateint_id, :integer
    add_index :appointments, :pateint_id


  end
end
