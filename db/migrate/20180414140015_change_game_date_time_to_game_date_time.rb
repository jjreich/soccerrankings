class ChangeGameDateTimeToGameDateTime < ActiveRecord::Migration[5.1]
  def change
  	rename_column :games, :dateTime, :gameDateTime
  end
end
