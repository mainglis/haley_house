class EventAttendanceRecordsController < ApplicationController
  # GET /event_attendance_records
  # GET /event_attendance_records.json
  def index
    @event_attendance_records = EventAttendanceRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @event_attendance_records }
    end
  end

  # GET /event_attendance_records/1
  # GET /event_attendance_records/1.json
  def show
    @event_attendance_record = EventAttendanceRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event_attendance_record }
    end
  end

  # GET /event_attendance_records/new
  # GET /event_attendance_records/new.json
  def new
    @event_attendance_record = EventAttendanceRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event_attendance_record }
    end
  end

  # GET /event_attendance_records/1/edit
  def edit
    @event_attendance_record = EventAttendanceRecord.find(params[:id])
  end

  # POST /event_attendance_records
  # POST /event_attendance_records.json
  def create
    @event_attendance_record = EventAttendanceRecord.new(params[:event_attendance_record])

    respond_to do |format|
      if @event_attendance_record.save
        format.html { redirect_to @event_attendance_record, :notice => 'Event attendance record was successfully created.' }
        format.json { render :json => @event_attendance_record, :status => :created, :location => @event_attendance_record }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event_attendance_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /event_attendance_records/1
  # PUT /event_attendance_records/1.json
  def update
    @event_attendance_record = EventAttendanceRecord.find(params[:id])

    respond_to do |format|
      if @event_attendance_record.update_attributes(params[:event_attendance_record])
        format.html { redirect_to @event_attendance_record, :notice => 'Event attendance record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event_attendance_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /event_attendance_records/1
  # DELETE /event_attendance_records/1.json
  def destroy
    @event_attendance_record = EventAttendanceRecord.find(params[:id])
    @event_attendance_record.destroy

    respond_to do |format|
      format.html { redirect_to event_attendance_records_url }
      format.json { head :no_content }
    end
  end
end
