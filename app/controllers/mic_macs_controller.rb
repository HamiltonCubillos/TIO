class MicMacsController < ApplicationController
  # GET /mic_macs
  # GET /mic_macs.json
  attr_accesible :numvariable
  def index
    @mic_macs = :MicMac.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mic_macs }
    end
  end

  # GET /mic_macs/1
  # GET /mic_macs/1.json
  def show
    @mic_mac = :MicMac.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mic_mac }
    end
  end

  # GET /mic_macs/new
  # GET /mic_macs/new.json
  def new
    @mic_mac = :MicMac.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mic_mac }
    end
  end

  # GET /mic_macs/1/edit
  def edit
    @mic_mac = :MicMac.find(params[:id])
  end

  # POST /mic_macs
  # POST /mic_macs.json
  def create
    @mic_mac = :MicMac.new(params[:mic_mac])

    respond_to do |format|
      if @mic_mac.save
        format.html { redirect_to @mic_mac, notice: 'Mic mac was successfully created.' }
        format.json { render json: @mic_mac, status: :created, location: @mic_mac }
      else
        format.html { render action: "new" }
        format.json { render json: @mic_mac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mic_macs/1
  # PUT /mic_macs/1.json
  def update
    @mic_mac = :MicMac.find(params[:id])

    respond_to do |format|
      if @mic_mac.update_attributes(params[:mic_mac])
        format.html { redirect_to @mic_mac, notice: 'Mic mac was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mic_mac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mic_macs/1
  # DELETE /mic_macs/1.json
  def destroy
    @mic_mac = :MicMac.find(params[:id])
    @mic_mac.destroy

    respond_to do |format|
      format.html { redirect_to mic_macs_url }
      format.json { head :no_content }
    end
  end
end
