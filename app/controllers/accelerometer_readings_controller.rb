class AccelerometerReadingsController < ApplicationController
  before_action :set_accelerometer_reading, only: [:show, :update, :destroy]

  # GET /accelerometer_readings
  def index
    @accelerometer_readings = AccelerometerReading.all

    render json: @accelerometer_readings
  end

  # GET /accelerometer_readings/1
  def show
    render json: @accelerometer_reading
  end

  # POST /accelerometer_readings
  def create
    @accelerometer_reading = AccelerometerReading.new(accelerometer_reading_params)

    if @accelerometer_reading.save
      render json: @accelerometer_reading, status: :created, location: @accelerometer_reading
    else
      render json: @accelerometer_reading.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accelerometer_readings/1
  def update
    if @accelerometer_reading.update(accelerometer_reading_params)
      render json: @accelerometer_reading
    else
      render json: @accelerometer_reading.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accelerometer_readings/1
  def destroy
    @accelerometer_reading.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accelerometer_reading
      @accelerometer_reading = AccelerometerReading.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def accelerometer_reading_params
      params.fetch(:accelerometer_reading, {})
    end
end
