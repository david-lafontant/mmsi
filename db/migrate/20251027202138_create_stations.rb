class CreateStations < ActiveRecord::Migration[8.0]
  def change
    create_table :stations do |t|
      t.string :category

      t.timestamps
    end
  end
end
