class FurtherReadingsController < ApplicationController
  # GET /further_readings
  # GET /further_readings.json
  def index
    @further_readings = FurtherReading.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @further_readings }
    end
  end

  # GET /further_readings/1
  # GET /further_readings/1.json
  def show
    @further_reading = FurtherReading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @further_reading }
    end
  end

  # GET /further_readings/new
  # GET /further_readings/new.json
  def new
    @further_reading = FurtherReading.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @further_reading }
    end
  end

  # GET /further_readings/1/edit
  def edit
    @further_reading = FurtherReading.find(params[:id])
  end

  # POST /further_readings
  # POST /further_readings.json
  def create
    @further_reading = FurtherReading.new(params[:further_reading])

    respond_to do |format|
      if @further_reading.save
        format.html { redirect_to @further_reading, notice: 'Further reading was successfully created.' }
        format.json { render json: @further_reading, status: :created, location: @further_reading }
      else
        format.html { render action: "new" }
        format.json { render json: @further_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /further_readings/1
  # PUT /further_readings/1.json
  def update
    @further_reading = FurtherReading.find(params[:id])

    respond_to do |format|
      if @further_reading.update_attributes(params[:further_reading])
        format.html { redirect_to @further_reading, notice: 'Further reading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @further_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /further_readings/1
  # DELETE /further_readings/1.json
  def destroy
    @further_reading = FurtherReading.find(params[:id])
    @further_reading.destroy

    respond_to do |format|
      format.html { redirect_to further_readings_url }
      format.json { head :no_content }
    end
  end
end
