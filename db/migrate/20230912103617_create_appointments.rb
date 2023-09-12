class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :disease
      t.string :doctor

      t.timestamps
    end
  end
end
