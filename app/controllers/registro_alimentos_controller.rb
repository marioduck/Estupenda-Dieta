class RegistroAlimentosController < ApplicationController
  # GET /registro_alimentos
  # GET /registro_alimentos.xml
  def index
    @registro_alimentos = RegistroAlimento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @registro_alimentos }
    end
  end

  # GET /registro_alimentos/1
  # GET /registro_alimentos/1.xml
  def show
    @registro_alimento = RegistroAlimento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @registro_alimento }
    end
  end

  # GET /registro_alimentos/new
  # GET /registro_alimentos/new.xml
  def new
    @registro_alimento = RegistroAlimento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @registro_alimento }
    end
  end

  # GET /registro_alimentos/1/edit
  def edit
    @registro_alimento = RegistroAlimento.find(params[:id])
  end

  # POST /registro_alimentos
  # POST /registro_alimentos.xml
  def create
    @registro_alimento = RegistroAlimento.new(params[:registro_alimento])

    respond_to do |format|
      if @registro_alimento.save
        format.html { redirect_to(@registro_alimento, :notice => 'Registro alimento was successfully created.') }
        format.xml  { render :xml => @registro_alimento, :status => :created, :location => @registro_alimento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @registro_alimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registro_alimentos/1
  # PUT /registro_alimentos/1.xml
  def update
    @registro_alimento = RegistroAlimento.find(params[:id])

    respond_to do |format|
      if @registro_alimento.update_attributes(params[:registro_alimento])
        format.html { redirect_to(@registro_alimento, :notice => 'Registro alimento was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @registro_alimento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_alimentos/1
  # DELETE /registro_alimentos/1.xml
  def destroy
    @registro_alimento = RegistroAlimento.find(params[:id])
    @registro_alimento.destroy

    respond_to do |format|
      format.html { redirect_to(registro_alimentos_url) }
      format.xml  { head :ok }
    end
  end
end
