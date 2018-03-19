class CreatePlayerBallSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :player_ball_skills do |t|
      t.integer :juggling
      t.integer :dribbline
      t.integer :receiving
      t.integer :heading
      t.integer :shooting
      t.integer :longBalls

      t.timestamps
    end
  end
end
