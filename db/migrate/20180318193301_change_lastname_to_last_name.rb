class ChangeLastnameToLastName < ActiveRecord::Migration[5.1]
  def change
  	 rename_column :players, :lastname, :lastName
  end
end
