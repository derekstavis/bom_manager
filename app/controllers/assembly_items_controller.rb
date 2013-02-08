class AssemblyItemsController < ApplicationController
  # GET /assembly_items
  # GET /assembly_items.json
  def index
    @assembly_items = AssemblyItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @assembly_items }
    end
  end

  # GET /assembly_items/1
  # GET /assembly_items/1.json
  def show
    @assembly_item = AssemblyItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @assembly_item }
    end
  end

  # GET /assembly_items/new
  # GET /assembly_items/new.json
  def new
    @assembly_item = AssemblyItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @assembly_item }
    end
  end

  # GET /assembly_items/1/edit
  def edit
    @assembly_item = AssemblyItem.find(params[:id])
  end

  # POST /assembly_items
  # POST /assembly_items.json
  def create
    @assembly_item = AssemblyItem.new(params[:assembly_item])

    respond_to do |format|
      if @assembly_item.save
        format.html { redirect_to @assembly_item.assembly, :notice => 'Ítem adicionado com sucesso!' }
        format.json { render :json => @assembly_item, :status => :created, :location => @assembly_item }
      else
        format.html { redirect_to @assembly_item.assembly, :notice => 'Cadastro do ítem inválido!' }
        format.json { render :json => @assembly_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /assembly_items/1
  # PUT /assembly_items/1.json
  def update
    @assembly_item = AssemblyItem.find(params[:id])

    respond_to do |format|
      if @assembly_item.update_attributes(params[:assembly_item])
        format.html { redirect_to @assembly_item, :notice => 'Assembly item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @assembly_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assembly_items/1
  # DELETE /assembly_items/1.json
  def destroy
    @assembly_item = AssemblyItem.find(params[:id])
    item_assembly = @assembly_item.assembly
    @assembly_item.destroy

    respond_to do |format|
      format.html { redirect_to assembly_url(item_assembly) }
      format.json { head :no_content }
    end
  end
end
