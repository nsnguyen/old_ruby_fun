class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :department
      t.string :identifier
      t.string :teacher
      t.string :location

      t.timestamps
    end
  end
end
