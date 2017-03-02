require 'test_helper'

class AccelerometerReadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accelerometer_reading = accelerometer_readings(:one)
  end

  test "should get index" do
    get accelerometer_readings_url, as: :json
    assert_response :success
  end

  test "should create accelerometer_reading" do
    assert_difference('AccelerometerReading.count') do
      post accelerometer_readings_url, params: { accelerometer_reading: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show accelerometer_reading" do
    get accelerometer_reading_url(@accelerometer_reading), as: :json
    assert_response :success
  end

  test "should update accelerometer_reading" do
    patch accelerometer_reading_url(@accelerometer_reading), params: { accelerometer_reading: {  } }, as: :json
    assert_response 200
  end

  test "should destroy accelerometer_reading" do
    assert_difference('AccelerometerReading.count', -1) do
      delete accelerometer_reading_url(@accelerometer_reading), as: :json
    end

    assert_response 204
  end
end
