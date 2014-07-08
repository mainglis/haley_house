class IndividualRelationshipRecordsController < ApplicationController
  # GET /individual_relationship_records
  # GET /individual_relationship_records.json
  def index
    @individual_relationship_records = IndividualRelationshipRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @individual_relationship_records }
    end
  end

  # GET /individual_relationship_records/1
  # GET /individual_relationship_records/1.json
  def show
    @individual_relationship_record = IndividualRelationshipRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @individual_relationship_record }
    end
  end

  # GET /individual_relationship_records/new
  # GET /individual_relationship_records/new.json
  def new
    @individual_relationship_record = IndividualRelationshipRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @individual_relationship_record }
    end
  end

  # GET /individual_relationship_records/1/edit
  def edit
    @individual_relationship_record = IndividualRelationshipRecord.find(params[:id])
  end

  # POST /individual_relationship_records
  # POST /individual_relationship_records.json
  def create
    @individual_relationship_record = IndividualRelationshipRecord.new(params[:individual_relationship_record])

    respond_to do |format|
      if @individual_relationship_record.save
        format.html { redirect_to @individual_relationship_record, :notice => 'Individual relationship record was successfully created.' }
        format.json { render :json => @individual_relationship_record, :status => :created, :location => @individual_relationship_record }
      else
        format.html { render :action => "new" }
        format.json { render :json => @individual_relationship_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /individual_relationship_records/1
  # PUT /individual_relationship_records/1.json
  def update
    @individual_relationship_record = IndividualRelationshipRecord.find(params[:id])

    respond_to do |format|
      if @individual_relationship_record.update_attributes(params[:individual_relationship_record])
        format.html { redirect_to @individual_relationship_record, :notice => 'Individual relationship record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @individual_relationship_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /individual_relationship_records/1
  # DELETE /individual_relationship_records/1.json
  def destroy
    @individual_relationship_record = IndividualRelationshipRecord.find(params[:id])
    @individual_relationship_record.destroy

    respond_to do |format|
      format.html { redirect_to individual_relationship_records_url }
      format.json { head :no_content }
    end
  end
end
