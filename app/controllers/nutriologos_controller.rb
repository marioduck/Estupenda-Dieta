class NutriologosController < ApplicationController
  # GET /nutriologos
  # GET /nutriologos.xml
  def index
    @nutriologos = Nutriologo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nutriologos }
    end
  end

  # GET /nutriologos/1
  # GET /nutriologos/1.xml
  def show
    @nutriologo = Nutriologo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nutriologo }
    end
  end

  # GET /nutriologos/new
  # GET /nutriologos/new.xml
  def new
    @nutriologo = Nutriologo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nutriologo }
    end
  end

  # GET /nutriologos/1/edit
  def edit
    @nutriologo = Nutriologo.find(params[:id])
  end

  # POST /nutriologos
  # POST /nutriologos.xml
  def create
    @nutriologo = Nutriologo.new(params[:nutriologo])

    respond_to do |format|
      if @nutriologo.save
        format.html { redirect_to(@nutriologo, :notice => 'Nutriologo was successfully created.') }
        format.xml  { render :xml => @nutriologo, :status => :created, :location => @nutriologo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nutriologo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nutriologos/1
  # PUT /nutriologos/1.xml
  def update
    @nutriologo = Nutriologo.find(params[:id])

    respond_to do |format|
      if @nutriologo.update_attributes(params[:nutriologo])
        format.html { redirect_to(@nutriologo, :notice => 'Nutriologo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nutriologo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nutriologos/1
  # DELETE /nutriologos/1.xml
  def destroy
    @nutriologo = Nutriologo.find(params[:id])
    @nutriologo.destroy

    respond_to do |format|
      format.html { redirect_to(nutriologos_url) }
      format.xml  { head :ok }
    end
  end
end
