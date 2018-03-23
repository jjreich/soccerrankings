class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.datetime :dateTime
      t.string :location
      t.string :fieldType
      t.string :fieldConditions
      t.string :weather
      t.integer :temperature

      t.timestamps
    end
  end
end
