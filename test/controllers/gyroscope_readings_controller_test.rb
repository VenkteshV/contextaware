require 'test_helper'

class GyroscopeReadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gyroscope_reading = gyroscope_readings(:one)
  end

  test "should get index" do
    get gyroscope_readings_url, as: :json
    assert_response :success
  end

  test "should create gyroscope_reading" do
    assert_difference('GyroscopeReading.count') do
      post gyroscope_readings_url, params: { gyroscope_reading: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show gyroscope_reading" do
    get gyroscope_reading_url(@gyroscope_reading), as: :json
    assert_response :success
  end

  test "should update gyroscope_reading" do
    patch gyroscope_reading_url(@gyroscope_reading), params: { gyroscope_reading: {  } }, as: :json
    assert_response 200
  end

  test "should destroy gyroscope_reading" do
    assert_difference('GyroscopeReading.count', -1) do
      delete gyroscope_reading_url(@gyroscope_reading), as: :json
    end

    assert_response 204
  end
end
