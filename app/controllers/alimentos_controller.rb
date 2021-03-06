class AlimentosController < ApplicationController
  # GET /alimentos
  # GET /alimentos.xml
  def index
    @alimentos = Alimento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alimentos }
    end
  end

  # GET /alimentos/1
  # GET /alimentos/1.xml
  def show
    @alimento = Alimento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alimento }
    end
  end

  # GET /alimentos/new
  # GET /alimentos/new.xml
  def new
    @alimento = Alimento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alimento }
    end
  end

  # GET /alimentos/1/edit
  def edit
    @alimento = Alimento.find(params[:id])
  end

  # POST /alimentos
  # POST /alimentos.xml
  def create
    @alimento = Alimento.new(params[:alimento])

    respond_to do |format|
      if @alimento.save
        format.html { redirect_to(@alimento, :notice => 'Alimento was successfully created.') }
        format.xml  { render :xml => @alimento, :status => :created, :location => @alimento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alimentos/1
  # PUT /alimentos/1.xml
  def update
    @alimento = Alimento.find(params[:id])

    respond_to do |format|
      if @alimento.update_attributes(params[:alimento])
        format.html { redirect_to(@alimento, :notice => 'Alimento was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alimentos/1
  # DELETE /alimentos/1.xml
  def destroy
    @alimento = Alimento.find(params[:id])
    @alimento.destroy

    respond_to do |format|
      format.html { redirect_to(alimentos_url) }
      format.xml  { head :ok }
    end
  end
end
