class PlatillosController < ApplicationController
  # GET /platillos
  # GET /platillos.xml
  def index
    @platillos = Platillo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @platillos }
    end
  end

  # GET /platillos/1
  # GET /platillos/1.xml
  def show
    @platillo = Platillo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @platillo }
    end
  end

  # GET /platillos/new
  # GET /platillos/new.xml
  def new
    @platillo = Platillo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @platillo }
    end
  end

  # GET /platillos/1/edit
  def edit
    @platillo = Platillo.find(params[:id])
  end

  # POST /platillos
  # POST /platillos.xml
  def create
    @platillo = Platillo.new(params[:platillo])

    respond_to do |format|
      if @platillo.save
        format.html { redirect_to(@platillo, :notice => 'Platillo was successfully created.') }
        format.xml  { render :xml => @platillo, :status => :created, :location => @platillo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @platillo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /platillos/1
  # PUT /platillos/1.xml
  def update
    @platillo = Platillo.find(params[:id])

    respond_to do |format|
      if @platillo.update_attributes(params[:platillo])
        format.html { redirect_to(@platillo, :notice => 'Platillo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @platillo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /platillos/1
  # DELETE /platillos/1.xml
  def destroy
    @platillo = Platillo.find(params[:id])
    @platillo.destroy

    respond_to do |format|
      format.html { redirect_to(platillos_url) }
      format.xml  { head :ok }
    end
  end
end
