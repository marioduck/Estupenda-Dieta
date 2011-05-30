class EtiquetaController < ApplicationController
  # GET /etiqueta
  # GET /etiqueta.xml
  def index
    @etiqueta = Etiquetum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @etiqueta }
    end
  end

  # GET /etiqueta/1
  # GET /etiqueta/1.xml
  def show
    @etiquetum = Etiquetum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @etiquetum }
    end
  end

  # GET /etiqueta/new
  # GET /etiqueta/new.xml
  def new
    @etiquetum = Etiquetum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @etiquetum }
    end
  end

  # GET /etiqueta/1/edit
  def edit
    @etiquetum = Etiquetum.find(params[:id])
  end

  # POST /etiqueta
  # POST /etiqueta.xml
  def create
    @etiquetum = Etiquetum.new(params[:etiquetum])

    respond_to do |format|
      if @etiquetum.save
        format.html { redirect_to(@etiquetum, :notice => 'Etiquetum was successfully created.') }
        format.xml  { render :xml => @etiquetum, :status => :created, :location => @etiquetum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @etiquetum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /etiqueta/1
  # PUT /etiqueta/1.xml
  def update
    @etiquetum = Etiquetum.find(params[:id])

    respond_to do |format|
      if @etiquetum.update_attributes(params[:etiquetum])
        format.html { redirect_to(@etiquetum, :notice => 'Etiquetum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @etiquetum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /etiqueta/1
  # DELETE /etiqueta/1.xml
  def destroy
    @etiquetum = Etiquetum.find(params[:id])
    @etiquetum.destroy

    respond_to do |format|
      format.html { redirect_to(etiqueta_url) }
      format.xml  { head :ok }
    end
  end
end
