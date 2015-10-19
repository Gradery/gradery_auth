class RemoveExtraFieldsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :house_id, :string
    remove_column :users, :username, :string
    remove_column :users, :password, :string
  end
end
