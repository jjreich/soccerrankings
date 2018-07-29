class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.datetime :eventTime
      t.string :headline
      t.text :article
      t.string :importance
      t.integer :user_id

      t.timestamps
    end
  end
end
