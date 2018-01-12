class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :pin
      t.string :question1
      t.string :question2
      t.string :email

      t.timestamps
    end
  end
end
