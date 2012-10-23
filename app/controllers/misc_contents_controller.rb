class MiscContentsController < ApplicationController
  # GET /misc_contents
  # GET /misc_contents.json
  def index
    @misc_contents = MiscContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @misc_contents }
    end
  end

  # GET /misc_contents/1
  # GET /misc_contents/1.json
  def show
    @misc_content = MiscContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @misc_content }
    end
  end

  # GET /misc_contents/new
  # GET /misc_contents/new.json
  def new
    @misc_content = MiscContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @misc_content }
    end
  end

  # GET /misc_contents/1/edit
  def edit
    @misc_content = MiscContent.find(params[:id])
  end

  # POST /misc_contents
  # POST /misc_contents.json
  def create
    @misc_content = MiscContent.new(params[:misc_content])

    respond_to do |format|
      if @misc_content.save
        format.html { redirect_to :back, notice: 'Misc content was successfully created.' }
        format.json { render json: @misc_content, status: :created, location: @misc_content }
      else
        format.html { render action: "new" }
        format.json { render json: @misc_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /misc_contents/1
  # PUT /misc_contents/1.json
  def update
    @misc_content = MiscContent.find(params[:id])

    respond_to do |format|
      if @misc_content.update_attributes(params[:misc_content])
        format.html { redirect_to :back, notice: 'Misc content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @misc_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misc_contents/1
  # DELETE /misc_contents/1.json
  def destroy
    @misc_content = MiscContent.find(params[:id])
    @misc_content.destroy

    respond_to do |format|
      format.html { redirect_to misc_contents_url }
      format.json { head :no_content }
    end
  end
end
