class ChangeIsadminToBeBooleanInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :isadmin, :boolean
    change_column_default(
      :users,
      :isadmin,
      false
    )
  end
end
