class CreatejointablePlayerUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :players, :users do |t|
      t.index [:player_id, :user_id]
    end
  end
end
