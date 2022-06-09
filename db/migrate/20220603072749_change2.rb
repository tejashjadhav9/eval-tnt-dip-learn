class Change2 < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :phone_no, :bigint
    add_index :students, :first_name
  end
end
