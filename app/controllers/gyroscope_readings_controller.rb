class GyroscopeReadingsController < ApplicationController
  before_action :set_gyroscope_reading, only: [:show, :update, :destroy]

  # GET /gyroscope_readings
  def index
    @gyroscope_readings = GyroscopeReading.all

    render json: @gyroscope_readings
  end

  # GET /gyroscope_readings/1
  def show
    render json: @gyroscope_reading
  end

  # POST /gyroscope_readings
  def create
    @gyroscope_reading = GyroscopeReading.new(gyroscope_reading_params)

    if @gyroscope_reading.save
      render json: @gyroscope_reading, status: :created, location: @gyroscope_reading
    else
      render json: @gyroscope_reading.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gyroscope_readings/1
  def update
    if @gyroscope_reading.update(gyroscope_reading_params)
      render json: @gyroscope_reading
    else
      render json: @gyroscope_reading.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gyroscope_readings/1
  def destroy
    @gyroscope_reading.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gyroscope_reading
      @gyroscope_reading = GyroscopeReading.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gyroscope_reading_params
      params.fetch(:gyroscope_reading, {})
    end
end
