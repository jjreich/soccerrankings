class CreateJoinTablePlayerTeam < ActiveRecord::Migration[5.1]
  def change
    create_join_table :players, :teams do |t|
      t.index [:player_id, :team_id]
    end
  end
end
