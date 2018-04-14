class ChangeGameGDateTimeToGameDateTime < ActiveRecord::Migration[5.1]
  def change
  	rename_column :games, :gameDateTime, :game_date_time
  end
end
