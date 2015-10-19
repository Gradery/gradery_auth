class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.integer :school_id

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
