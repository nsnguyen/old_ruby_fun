class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :department
      t.string :number
      t.string :title
      t.integer :size
      t.integer :hours

      t.timestamps
    end
  end
end
