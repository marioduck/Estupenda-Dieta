class MedidasController < ApplicationController
  # GET /medidas
  # GET /medidas.xml
  def index
    @medidas = Medida.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @medidas }
    end
  end

  # GET /medidas/1
  # GET /medidas/1.xml
  def show
    @medida = Medida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @medida }
    end
  end

  # GET /medidas/new
  # GET /medidas/new.xml
  def new
    @medida = Medida.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @medida }
    end
  end

  # GET /medidas/1/edit
  def edit
    @medida = Medida.find(params[:id])
  end

  # POST /medidas
  # POST /medidas.xml
  def create
    @medida = Medida.new(params[:medida])

    respond_to do |format|
      if @medida.save
        format.html { redirect_to(@medida, :notice => 'Medida was successfully created.') }
        format.xml  { render :xml => @medida, :status => :created, :location => @medida }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /medidas/1
  # PUT /medidas/1.xml
  def update
    @medida = Medida.find(params[:id])

    respond_to do |format|
      if @medida.update_attributes(params[:medida])
        format.html { redirect_to(@medida, :notice => 'Medida was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /medidas/1
  # DELETE /medidas/1.xml
  def destroy
    @medida = Medida.find(params[:id])
    @medida.destroy

    respond_to do |format|
      format.html { redirect_to(medidas_url) }
      format.xml  { head :ok }
    end
  end
end
