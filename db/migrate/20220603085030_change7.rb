class Change7 < ActiveRecord::Migration[7.0]
  def up
    remove_column :users, :last_name, :integer
  end

  def down
    add_column :users,  :last_name,:integer
  end
end
