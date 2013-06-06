class RolesRostersController < ApplicationController
  # GET /roles_rosters
  # GET /roles_rosters.json
  def index
    @roles_rosters = RolesRoster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roles_rosters }
    end
  end

  # GET /roles_rosters/1
  # GET /roles_rosters/1.json
  def show
    @roles_roster = RolesRoster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roles_roster }
    end
  end

  # GET /roles_rosters/new
  # GET /roles_rosters/new.json
  def new
    @roles_roster = RolesRoster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roles_roster }
    end
  end

  # GET /roles_rosters/1/edit
  def edit
    @roles_roster = RolesRoster.find(params[:id])
  end

  # POST /roles_rosters
  # POST /roles_rosters.json
  def create
    @roles_roster = RolesRoster.new(params[:roles_roster])

    respond_to do |format|
      if @roles_roster.save
        format.html { redirect_to @roles_roster, notice: 'Roles roster was successfully created.' }
        format.json { render json: @roles_roster, status: :created, location: @roles_roster }
      else
        format.html { render action: "new" }
        format.json { render json: @roles_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roles_rosters/1
  # PUT /roles_rosters/1.json
  def update
    @roles_roster = RolesRoster.find(params[:id])

    respond_to do |format|
      if @roles_roster.update_attributes(params[:roles_roster])
        format.html { redirect_to @roles_roster, notice: 'Roles roster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roles_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles_rosters/1
  # DELETE /roles_rosters/1.json
  def destroy
    @roles_roster = RolesRoster.find(params[:id])
    @roles_roster.destroy

    respond_to do |format|
      format.html { redirect_to roles_rosters_url }
      format.json { head :no_content }
    end
  end
end
