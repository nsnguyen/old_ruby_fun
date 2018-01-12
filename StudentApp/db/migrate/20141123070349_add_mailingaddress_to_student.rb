class AddMailingaddressToStudent < ActiveRecord::Migration
  def change
    add_column :students, :mailingaddress, :string
  end
end
