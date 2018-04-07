class SetCompletedPassesBackToInteger < ActiveRecord::Migration[5.1]
  def change
  	change_column :player_game_subdata, :attemptedPasses, :integer, default: 0
  end
end
