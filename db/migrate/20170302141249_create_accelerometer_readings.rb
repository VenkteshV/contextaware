class CreateAccelerometerReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :accelerometer_readings do |t|
      t.float :ax
      t.float :ay
      t.float :az
      t.timestamps
    end
  end
end
