class RemoveUserNameFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :user_name
    add_column :users, :email, :text
  end
end
