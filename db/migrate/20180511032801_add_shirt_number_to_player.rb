class AddShirtNumberToPlayer < ActiveRecord::Migration[5.1]
  def change
  	add_column :players, :jersey_number, :string
  end
end
