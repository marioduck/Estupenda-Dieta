class HistorialPesosController < ApplicationController
  # GET /historial_pesos
  # GET /historial_pesos.xml
  def index
    @historial_pesos = HistorialPeso.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @historial_pesos }
    end
  end

  # GET /historial_pesos/1
  # GET /historial_pesos/1.xml
  def show
    @historial_peso = HistorialPeso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @historial_peso }
    end
  end

  # GET /historial_pesos/new
  # GET /historial_pesos/new.xml
  def new
    @historial_peso = HistorialPeso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @historial_peso }
    end
  end

  # GET /historial_pesos/1/edit
  def edit
    @historial_peso = HistorialPeso.find(params[:id])
  end

  # POST /historial_pesos
  # POST /historial_pesos.xml
  def create
    @historial_peso = HistorialPeso.new(params[:historial_peso])

    respond_to do |format|
      if @historial_peso.save
        format.html { redirect_to(@historial_peso, :notice => 'Historial peso was successfully created.') }
        format.xml  { render :xml => @historial_peso, :status => :created, :location => @historial_peso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @historial_peso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /historial_pesos/1
  # PUT /historial_pesos/1.xml
  def update
    @historial_peso = HistorialPeso.find(params[:id])

    respond_to do |format|
      if @historial_peso.update_attributes(params[:historial_peso])
        format.html { redirect_to(@historial_peso, :notice => 'Historial peso was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @historial_peso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /historial_pesos/1
  # DELETE /historial_pesos/1.xml
  def destroy
    @historial_peso = HistorialPeso.find(params[:id])
    @historial_peso.destroy

    respond_to do |format|
      format.html { redirect_to(historial_pesos_url) }
      format.xml  { head :ok }
    end
  end
end
