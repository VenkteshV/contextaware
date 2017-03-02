class CreateGyroscopeReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :gyroscope_readings do |t|
      t.float :gx
      t.float :gy
      t.float :gz
      t.timestamps
    end
  end
end
