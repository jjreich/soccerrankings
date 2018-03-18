class ChangeDobDataformat < ActiveRecord::Migration[5.1]
  def change
  	change_column :players, :dob, :date
  end
end
