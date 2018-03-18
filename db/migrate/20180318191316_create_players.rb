class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :firstName
      t.string :lastname
      t.string :gender
      t.datetime :dob

      t.timestamps
    end
  end
end
