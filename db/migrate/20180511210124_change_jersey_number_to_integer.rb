class ChangeJerseyNumberToInteger < ActiveRecord::Migration[5.1]
  def change
 	change_column :players, :jersey_number, :integer, using: 'jersey_number::integer'
  end
end
