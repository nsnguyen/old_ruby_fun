class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :petname
      t.string :owner
      t.string :petwalker
      t.date :apptdate
      t.integer :apptlength

      t.timestamps
    end
  end
end
