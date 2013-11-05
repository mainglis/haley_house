class GrantmakersController < ApplicationController
  # GET /grantmakers
  # GET /grantmakers.json
  def index
    if params[:commit] == "Clear"
      params[:search].each_key { |k| params[:search][k] = '' }
    end

    @search = Grantmaker.search(params[:search])
    @grantmakers = @search.all   # load all matching records

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @grantmakers }
    end
  end

  # GET /grantmakers/1
  # GET /grantmakers/1.json
  def show
    @grantmaker = Grantmaker.find(params[:id])
    @grant_records = GrantRecord.where( :grantmaker_id => params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @grantmaker }
    end
  end

  # GET /grantmakers/new
  # GET /grantmakers/new.json
  def new
    @grantmaker = Grantmaker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @grantmaker }
    end
  end

  # GET /grantmakers/1/edit
  def edit
    @grantmaker = Grantmaker.find(params[:id])
  end

  # POST /grantmakers
  # POST /grantmakers.json
  def create
    @grantmaker = Grantmaker.new(params[:grantmaker])

    respond_to do |format|
      if @grantmaker.save
        format.html { redirect_to @grantmaker, :notice => 'Grantmaker was successfully created.' }
        format.json { render :json => @grantmaker, :status => :created, :location => @grantmaker }
      else
        format.html { render :action => "new" }
        format.json { render :json => @grantmaker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grantmakers/1
  # PUT /grantmakers/1.json
  def update
    @grantmaker = Grantmaker.find(params[:id])

    respond_to do |format|
      if @grantmaker.update_attributes(params[:grantmaker])
        format.html { redirect_to @grantmaker, :notice => 'Grantmaker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @grantmaker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grantmakers/1
  # DELETE /grantmakers/1.json
  def destroy
    @grantmaker = Grantmaker.find(params[:id])
    @grantmaker.destroy

    respond_to do |format|
      format.html { redirect_to grantmakers_url }
      format.json { head :no_content }
    end
  end
  def new_import
  end
end
