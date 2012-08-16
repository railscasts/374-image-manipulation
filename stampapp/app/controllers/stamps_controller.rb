class StampsController < ApplicationController
  # GET /stamps
  # GET /stamps.json
  def index
    @stamps = Stamp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stamps }
    end
  end

  # GET /stamps/1
  # GET /stamps/1.json
  def show
    @stamp = Stamp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stamp }
    end
  end

  # GET /stamps/new
  # GET /stamps/new.json
  def new
    @stamp = Stamp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stamp }
    end
  end

  # GET /stamps/1/edit
  def edit
    @stamp = Stamp.find(params[:id])
  end

  # POST /stamps
  # POST /stamps.json
  def create
    @stamp = Stamp.new(params[:stamp])

    respond_to do |format|
      if @stamp.save
        format.html { redirect_to @stamp, notice: 'Stamp was successfully created.' }
        format.json { render json: @stamp, status: :created, location: @stamp }
      else
        format.html { render action: "new" }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stamps/1
  # PUT /stamps/1.json
  def update
    @stamp = Stamp.find(params[:id])

    respond_to do |format|
      if @stamp.update_attributes(params[:stamp])
        format.html { redirect_to @stamp, notice: 'Stamp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stamps/1
  # DELETE /stamps/1.json
  def destroy
    @stamp = Stamp.find(params[:id])
    @stamp.destroy

    respond_to do |format|
      format.html { redirect_to stamps_url }
      format.json { head :no_content }
    end
  end
end
