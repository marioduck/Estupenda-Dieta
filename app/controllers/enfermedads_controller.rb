class EnfermedadsController < ApplicationController
  # GET /enfermedads
  # GET /enfermedads.xml
  def index
    @enfermedads = Enfermedad.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enfermedads }
    end
  end

  # GET /enfermedads/1
  # GET /enfermedads/1.xml
  def show
    @enfermedad = Enfermedad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enfermedad }
    end
  end

  # GET /enfermedads/new
  # GET /enfermedads/new.xml
  def new
    @enfermedad = Enfermedad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enfermedad }
    end
  end

  # GET /enfermedads/1/edit
  def edit
    @enfermedad = Enfermedad.find(params[:id])
  end

  # POST /enfermedads
  # POST /enfermedads.xml
  def create
    @enfermedad = Enfermedad.new(params[:enfermedad])

    respond_to do |format|
      if @enfermedad.save
        format.html { redirect_to(@enfermedad, :notice => 'Enfermedad was successfully created.') }
        format.xml  { render :xml => @enfermedad, :status => :created, :location => @enfermedad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enfermedad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enfermedads/1
  # PUT /enfermedads/1.xml
  def update
    @enfermedad = Enfermedad.find(params[:id])

    respond_to do |format|
      if @enfermedad.update_attributes(params[:enfermedad])
        format.html { redirect_to(@enfermedad, :notice => 'Enfermedad was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enfermedad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enfermedads/1
  # DELETE /enfermedads/1.xml
  def destroy
    @enfermedad = Enfermedad.find(params[:id])
    @enfermedad.destroy

    respond_to do |format|
      format.html { redirect_to(enfermedads_url) }
      format.xml  { head :ok }
    end
  end
end
