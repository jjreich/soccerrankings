class AddMotmToPlayergamesubdata < ActiveRecord::Migration[5.1]
  def change
  	add_column :player_game_subdata, :motm, :boolean, default: false
  end
end