class MainContentsController < ApplicationController
  # GET /main_contents
  # GET /main_contents.json
  def index
    @main_contents = MainContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @main_contents }
    end
  end

  # GET /main_contents/1
  # GET /main_contents/1.json
  def show
    @main_content = MainContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @main_content }
    end
  end

  # GET /main_contents/new
  # GET /main_contents/new.json
  def new
    @main_content = MainContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @main_content }
    end
  end

  # GET /main_contents/1/edit
  def edit
    @main_content = MainContent.find(params[:id])
  end

  # POST /main_contents
  # POST /main_contents.json
  def create
    @main_content = MainContent.new(params[:main_content])

    respond_to do |format|
      if @main_content.save
        format.html { redirect_to :back, notice: 'Main content was successfully created.' }
        format.json { render json: @main_content, status: :created, location: @main_content }
      else
        format.html { render action: "new" }
        format.json { render json: @main_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /main_contents/1
  # PUT /main_contents/1.json
  def update
    @main_content = MainContent.find(params[:id])

    respond_to do |format|
      if @main_content.update_attributes(params[:main_content])
        format.html { redirect_to :back, notice: 'Main content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @main_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_contents/1
  # DELETE /main_contents/1.json
  def destroy
    @main_content = MainContent.find(params[:id])
    @main_content.destroy

    respond_to do |format|
      format.html { redirect_to main_contents_url }
      format.json { head :no_content }
    end
  end
end
