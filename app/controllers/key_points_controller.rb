class KeyPointsController < ApplicationController
  # GET /key_points
  # GET /key_points.json
  def index
    @key_points = KeyPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @key_points }
    end
  end

  # GET /key_points/1
  # GET /key_points/1.json
  def show
    @key_point = KeyPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @key_point }
    end
  end

  # GET /key_points/new
  # GET /key_points/new.json
  def new
    @key_point = KeyPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @key_point }
    end
  end

  # GET /key_points/1/edit
  def edit
    @key_point = KeyPoint.find(params[:id])
  end

  # POST /key_points
  # POST /key_points.json
  def create
    @key_point = KeyPoint.new(params[:key_point])

    respond_to do |format|
      if @key_point.save
        format.html { redirect_to @key_point, notice: 'Key point was successfully created.' }
        format.json { render json: @key_point, status: :created, location: @key_point }
      else
        format.html { render action: "new" }
        format.json { render json: @key_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /key_points/1
  # PUT /key_points/1.json
  def update
    @key_point = KeyPoint.find(params[:id])

    respond_to do |format|
      if @key_point.update_attributes(params[:key_point])
        format.html { redirect_to @key_point, notice: 'Key point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @key_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_points/1
  # DELETE /key_points/1.json
  def destroy
    @key_point = KeyPoint.find(params[:id])
    @key_point.destroy

    respond_to do |format|
      format.html { redirect_to key_points_url }
      format.json { head :no_content }
    end
  end
end
