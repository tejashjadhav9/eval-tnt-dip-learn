class Change5 < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :last_name, :text
  end
end
