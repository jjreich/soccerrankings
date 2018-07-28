class Addactiveoptiontoteams < ActiveRecord::Migration[5.1]
  def change
  	add_column :teams, :active, :boolean, default: false
  end
end
