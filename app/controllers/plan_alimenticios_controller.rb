class PlanAlimenticiosController < ApplicationController
  # GET /plan_alimenticios
  # GET /plan_alimenticios.xml
  def index
    @plan_alimenticios = PlanAlimenticio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plan_alimenticios }
    end
  end

  # GET /plan_alimenticios/1
  # GET /plan_alimenticios/1.xml
  def show
    @plan_alimenticio = PlanAlimenticio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plan_alimenticio }
    end
  end

  # GET /plan_alimenticios/new
  # GET /plan_alimenticios/new.xml
  def new
    @plan_alimenticio = PlanAlimenticio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plan_alimenticio }
    end
  end

  # GET /plan_alimenticios/1/edit
  def edit
    @plan_alimenticio = PlanAlimenticio.find(params[:id])
  end

  # POST /plan_alimenticios
  # POST /plan_alimenticios.xml
  def create
    @plan_alimenticio = PlanAlimenticio.new(params[:plan_alimenticio])

    respond_to do |format|
      if @plan_alimenticio.save
        format.html { redirect_to(@plan_alimenticio, :notice => 'Plan alimenticio was successfully created.') }
        format.xml  { render :xml => @plan_alimenticio, :status => :created, :location => @plan_alimenticio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @plan_alimenticio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /plan_alimenticios/1
  # PUT /plan_alimenticios/1.xml
  def update
    @plan_alimenticio = PlanAlimenticio.find(params[:id])

    respond_to do |format|
      if @plan_alimenticio.update_attributes(params[:plan_alimenticio])
        format.html { redirect_to(@plan_alimenticio, :notice => 'Plan alimenticio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plan_alimenticio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_alimenticios/1
  # DELETE /plan_alimenticios/1.xml
  def destroy
    @plan_alimenticio = PlanAlimenticio.find(params[:id])
    @plan_alimenticio.destroy

    respond_to do |format|
      format.html { redirect_to(plan_alimenticios_url) }
      format.xml  { head :ok }
    end
  end
end
