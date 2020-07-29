class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.datetime :departure
      t.time :duration

      t.timestamps
    end
  end
end
