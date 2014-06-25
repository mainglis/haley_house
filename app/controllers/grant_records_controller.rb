class GrantRecordsController < ApplicationController

  before_filter :load_select_arrays

  # GET /grant_records
  # GET /grant_records.json
  def index
    if params[:commit] == "Clear"
      params[:search].each_key { |k| params[:search][k] = '' }
    end

    @search = GrantRecord.search(params[:search])
    @grant_records = @search.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @grant_records }
      format.csv { render :text => @grant_records.to_csv }
    end
  end

  # GET /grant_records/1
  # GET /grant_records/1.json
  def show
    @grant_record = GrantRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @grant_record }
    end
  end

  # GET /grant_records/new
  # GET /grant_records/new.json
  def new
    @grant_record = GrantRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @grant_record }
    end
  end

  # GET /grant_records/1/edit
  def edit
    @grant_record = GrantRecord.find(params[:id])
  end

  # POST /grant_records
  # POST /grant_records.json
  def create
    @grant_record = GrantRecord.new(params[:grant_record])

    respond_to do |format|
      if @grant_record.save
        format.html { redirect_to @grant_record, :notice => 'Grant record was successfully created.' }
        format.json { render :json => @grant_record, :status => :created, :location => @grant_record }
      else
        format.html { render :action => "new" }
        format.json { render :json => @grant_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grant_records/1
  # PUT /grant_records/1.json
  def update
    @grant_record = GrantRecord.find(params[:id])

    respond_to do |format|
      if @grant_record.update_attributes(params[:grant_record])
        format.html { redirect_to @grant_record, :notice => 'Grant record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @grant_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grant_records/1
  # DELETE /grant_records/1.json
  def destroy
    @grant_record = GrantRecord.find(params[:id])
    @grant_record.destroy

    respond_to do |format|
      format.html { redirect_to grant_records_url }
      format.json { head :no_content }
    end
  end

  def load_select_arrays
    @grantmakers = Grantmaker.all.map { |grantmaker| [grantmaker, grantmaker.id] }
    @organizations = Organization.all.map { |organization| [organization, organization.id] }
  end
end
