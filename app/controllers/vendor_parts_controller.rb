class VendorPartsController < ApplicationController
  # GET /vendor_parts
  # GET /vendor_parts.json
  def index
    @vendor_parts = VendorPart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @vendor_parts }
    end
  end

  # GET /vendor_parts/1
  # GET /vendor_parts/1.json
  def show
    @vendor_part = VendorPart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @vendor_part }
    end
  end

  # GET /vendor_parts/new
  # GET /vendor_parts/new.json
  def new
    @vendor_part = VendorPart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @vendor_part }
    end
  end

  # GET /vendor_parts/1/edit
  def edit
    @vendor_part = VendorPart.find(params[:id])
  end

  # POST /vendor_parts
  # POST /vendor_parts.json
  def create
    @vendor_part = VendorPart.new(params[:vendor_part])

    respond_to do |format|
      if @vendor_part.save
        format.html { redirect_to @vendor_part, :notice => 'Vendor part was successfully created.' }
        format.json { render :json => @vendor_part, :status => :created, :location => @vendor_part }
      else
        format.html { render :action => "new" }
        format.json { render :json => @vendor_part.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vendor_parts/1
  # PUT /vendor_parts/1.json
  def update
    @vendor_part = VendorPart.find(params[:id])

    respond_to do |format|
      if @vendor_part.update_attributes(params[:vendor_part])
        format.html { redirect_to @vendor_part, :notice => 'Vendor part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @vendor_part.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_parts/1
  # DELETE /vendor_parts/1.json
  def destroy
    @vendor_part = VendorPart.find(params[:id])
    @vendor_part.destroy

    respond_to do |format|
      format.html { redirect_to vendor_parts_url }
      format.json { head :no_content }
    end
  end
end
