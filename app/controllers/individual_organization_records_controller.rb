class IndividualOrganizationRecordsController < ApplicationController
  # GET /individual_organization_records
  # GET /individual_organization_records.json
  def index
    @individual_organization_records = IndividualOrganizationRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @individual_organization_records }
    end
  end

  # GET /individual_organization_records/1
  # GET /individual_organization_records/1.json
  def show
    @individual_organization_record = IndividualOrganizationRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @individual_organization_record }
    end
  end

  # GET /individual_organization_records/new
  # GET /individual_organization_records/new.json
  def new
    @individual_organization_record = IndividualOrganizationRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @individual_organization_record }
    end
  end

  # GET /individual_organization_records/1/edit
  def edit
    @individual_organization_record = IndividualOrganizationRecord.find(params[:id])
  end

  # POST /individual_organization_records
  # POST /individual_organization_records.json
  def create
    @individual_organization_record = IndividualOrganizationRecord.new(params[:individual_organization_record])

    respond_to do |format|
      if @individual_organization_record.save
        format.html { redirect_to @individual_organization_record, notice: 'Individual organization record was successfully created.' }
        format.json { render json: @individual_organization_record, status: :created, location: @individual_organization_record }
      else
        format.html { render action: "new" }
        format.json { render json: @individual_organization_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /individual_organization_records/1
  # PUT /individual_organization_records/1.json
  def update
    @individual_organization_record = IndividualOrganizationRecord.find(params[:id])

    respond_to do |format|
      if @individual_organization_record.update_attributes(params[:individual_organization_record])
        format.html { redirect_to @individual_organization_record, notice: 'Individual organization record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @individual_organization_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /individual_organization_records/1
  # DELETE /individual_organization_records/1.json
  def destroy
    @individual_organization_record = IndividualOrganizationRecord.find(params[:id])
    @individual_organization_record.destroy

    respond_to do |format|
      format.html { redirect_to individual_organization_records_url }
      format.json { head :no_content }
    end
  end
end
