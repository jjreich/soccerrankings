class CreatePlayerGameSubdata < ActiveRecord::Migration[5.1]
  def change
    create_table :player_game_subdata do |t|
      t.float :minutes
      t.integer :attemptedPasses
      t.integer :completedPasses
      t.integer :corners
      t.integer :crosses
      t.integer :clearings
      t.integer :longBalls
      t.integer :thruBalls
      t.integer :keyPasses
      t.integer :attemptedFirstTouches
      t.integer :successfulFirstTouches
      t.integer :dribbles
      t.integer :dispossessed
      t.integer :fouled
      t.integer :shots
      t.integer :shotsOnTarget
      t.integer :assists
      t.integer :goals
      t.integer :fiftyFiftiesWon
      t.integer :tackles
      t.integer :dribblePast
      t.integer :interceptions
      t.integer :interventions
      t.integer :blocks
      t.integer :ownGoals
      t.integer :saves
      t.integer :fouls
      t.integer :yellowCards
      t.integer :redCards

      t.timestamps
    end
  end
end
