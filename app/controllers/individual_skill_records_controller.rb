class IndividualSkillRecordsController < ApplicationController
  # GET /individual_skill_records
  # GET /individual_skill_records.json
  def index
    @individual_skill_records = IndividualSkillRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @individual_skill_records }
    end
  end

  # GET /individual_skill_records/1
  # GET /individual_skill_records/1.json
  def show
    @individual_skill_record = IndividualSkillRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @individual_skill_record }
    end
  end

  # GET /individual_skill_records/new
  # GET /individual_skill_records/new.json
  def new
    @individual_skill_record = IndividualSkillRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @individual_skill_record }
    end
  end

  # GET /individual_skill_records/1/edit
  def edit
    @individual_skill_record = IndividualSkillRecord.find(params[:id])
  end

  # POST /individual_skill_records
  # POST /individual_skill_records.json
  def create
    @individual_skill_record = IndividualSkillRecord.new(params[:individual_skill_record])

    respond_to do |format|
      if @individual_skill_record.save
        format.html { redirect_to @individual_skill_record, :notice => 'Individual skill record was successfully created.' }
        format.json { render :json => @individual_skill_record, :status => :created, :location => @individual_skill_record }
      else
        format.html { render :action => "new" }
        format.json { render :json => @individual_skill_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /individual_skill_records/1
  # PUT /individual_skill_records/1.json
  def update
    @individual_skill_record = IndividualSkillRecord.find(params[:id])

    respond_to do |format|
      if @individual_skill_record.update_attributes(params[:individual_skill_record])
        format.html { redirect_to @individual_skill_record, :notice => 'Individual skill record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @individual_skill_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /individual_skill_records/1
  # DELETE /individual_skill_records/1.json
  def destroy
    @individual_skill_record = IndividualSkillRecord.find(params[:id])
    @individual_skill_record.destroy

    respond_to do |format|
      format.html { redirect_to individual_skill_records_url }
      format.json { head :no_content }
    end
  end
end
