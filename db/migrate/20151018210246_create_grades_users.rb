class CreateGradesUsers < ActiveRecord::Migration
  def change
    create_table :grades_users do |t|
      t.integer :grade_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
