class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.bigint :phone_no
      t.string :email
      t.string :address
      t.string :city
      t.integer :age
      t.string :gender
      
      t.timestamps
    end
  end
end
