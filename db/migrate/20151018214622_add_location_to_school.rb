class AddLocationToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :location, :string
  end
end
