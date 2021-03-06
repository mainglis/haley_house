class IndividualRoleRecordsController < ApplicationController

  before_filter :load_select_arrays, :only => [:new, :edit]
  before_filter :load_parents

  # GET /individual_role_records
  # GET /individual_role_records.json
  def index
    @individual_role_records = IndividualRoleRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @individual_role_records }
    end
  end

  # GET /individual_role_records/1
  # GET /individual_role_records/1.json
  def show
    @individual_role_record = IndividualRoleRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @individual_role_record }
    end
  end

  # GET /individual_role_records/new
  # GET /individual_role_records/new.json
  def new
    @individual_role_record = IndividualRoleRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @individual_role_record }
    end
  end

  # GET /individual_role_records/1/edit
  def edit
    @individual_role_record = IndividualRoleRecord.find(params[:id])
  end

  # POST /individual_role_records
  # POST /individual_role_records.json
  def create
    @individual_role_record = IndividualRoleRecord.new(params[:individual_role_record])
    @individual_role_record.individual_id = params[:individual_id]

    respond_to do |format|
      if @individual_role_record.save!
        format.html { redirect_to @individual_role_record.individual, :notice => 'Individual role record was successfully created.' }
        format.json { render :json => @individual_role_record, :status => :created, :location => @individual_role_record }
      else
        format.html { render :action => "new" }
        format.json { render :json => @individual_role_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /individual_role_records/1
  # PUT /individual_role_records/1.json
  def update
    @individual_role_record = IndividualRoleRecord.find(params[:id])

    respond_to do |format|
      if @individual_role_record.update_attributes(params[:individual_role_record])
        format.html { redirect_to @individual_role_record.individual, :notice => 'Individual role record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @individual_role_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /individual_role_records/1
  # DELETE /individual_role_records/1.json
  def destroy
    @individual_role_record = IndividualRoleRecord.find(params[:id])
    @individual_role_record.destroy

    respond_to do |format|
      format.html { redirect_to individual_role_records_url }
      format.json { head :no_content }
    end
  end

  def load_select_arrays
    @roles = Role.all.map { |role| [role, role.id] }
  end

  def load_parents
    @individual ||= Individual.find(params[:individual_id]) if params[:individual_id]
    @individual ||= @individual_role_record.individual if @individual_role_record
  end
end
