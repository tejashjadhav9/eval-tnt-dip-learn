class Change6 < ActiveRecord::Migration[7.0]

  def up
    rename_column :users, :first_name, :full_name
  end

  def down
    remane_column :users, :full_name, :first_name
  end
end
