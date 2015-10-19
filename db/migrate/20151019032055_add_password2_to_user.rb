class AddPassword2ToUser < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
  end
end
