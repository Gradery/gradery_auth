class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :school_id, :integer
    add_column :users, :house_id, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
