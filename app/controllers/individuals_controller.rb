class IndividualsController < ApplicationController
  # GET /individuals
  # GET /individuals.json
  def index
    @action = "index"
    @search = Individual.limit(100).search(params[:search])
    @individuals = @search.all   # load all matching 
    # @individuals = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @individuals }
      format.csv { render :text => @individuals.to_csv }
       #/ format.xls { send_data @individuals.to_csv(col_sep: "/t") }
    end
  end
  

  # GET /individuals/1
  # GET /individuals/1.json
  def show
    @individual = Individual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @individual }
    end
  end

  # GET /individuals/new
  # GET /individuals/new.json
  def new
    @individual = Individual.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @individual }
    end
  end

  # GET /individuals/1/edit
  def edit
    @individual = Individual.find(params[:id])
  end

  # POST /individuals
  # POST /individuals.json
  def create
    @individual = Individual.new(params[:individual])

    respond_to do |format|
      if @individual.save
        format.html { redirect_to @individual, :notice => 'Individual was successfully created.' }
        format.json { render :json => @individual, :status => :created, :location => @individual }
      else
        format.html { render :action => "new" }
        format.json { render :json => @individual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /individuals/1
  # PUT /individuals/1.json
  def update
    @individual = Individual.find(params[:id])

    respond_to do |format|
      if @individual.update_attributes(params[:individual])
        format.html { redirect_to @individual, :notice => 'Individual was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @individual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /individuals/1
  # DELETE /individuals/1.json
  def destroy
    @individual = Individual.find(params[:id])
    @individual.destroy

    respond_to do |format|
      format.html { redirect_to individuals_url }
      format.json { head :no_content }
    end
  end

  def import
    Individual.import(params[:file])
    redirect_to individuals_url, :notice => "Individuals imported."
  end

  def new_import
  end
end
