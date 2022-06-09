class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :patient
      t.belongs_to :physician
      t.string :date

      t.timestamps
    end
  end
end
