class Change3 < ActiveRecord::Migration[7.0]
  def change
    rename_table :students, :users
  end
end
