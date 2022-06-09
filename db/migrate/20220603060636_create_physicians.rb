class CreatePhysicians < ActiveRecord::Migration[7.0]
  def change
    create_table :physicians do |t|
      t.string :first_name
      t.string :last_name
      t.bigint :tel_no
      t.string :email
      t.string :gender

      t.timestamps
    end
  end
end
