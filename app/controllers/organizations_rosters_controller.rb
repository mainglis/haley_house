class OrganizationsRostersController < ApplicationController
  # GET /organizations_rosters
  # GET /organizations_rosters.json
  def index
    @organizations_rosters = OrganizationsRoster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organizations_rosters }
    end
  end

  # GET /organizations_rosters/1
  # GET /organizations_rosters/1.json
  def show
    @organizations_roster = OrganizationsRoster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organizations_roster }
    end
  end

  # GET /organizations_rosters/new
  # GET /organizations_rosters/new.json
  def new
    @organizations_roster = OrganizationsRoster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organizations_roster }
    end
  end

  # GET /organizations_rosters/1/edit
  def edit
    @organizations_roster = OrganizationsRoster.find(params[:id])
  end

  # POST /organizations_rosters
  # POST /organizations_rosters.json
  def create
    @organizations_roster = OrganizationsRoster.new(params[:organizations_roster])

    respond_to do |format|
      if @organizations_roster.save
        format.html { redirect_to @organizations_roster, notice: 'Organizations roster was successfully created.' }
        format.json { render json: @organizations_roster, status: :created, location: @organizations_roster }
      else
        format.html { render action: "new" }
        format.json { render json: @organizations_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organizations_rosters/1
  # PUT /organizations_rosters/1.json
  def update
    @organizations_roster = OrganizationsRoster.find(params[:id])

    respond_to do |format|
      if @organizations_roster.update_attributes(params[:organizations_roster])
        format.html { redirect_to @organizations_roster, notice: 'Organizations roster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organizations_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations_rosters/1
  # DELETE /organizations_rosters/1.json
  def destroy
    @organizations_roster = OrganizationsRoster.find(params[:id])
    @organizations_roster.destroy

    respond_to do |format|
      format.html { redirect_to organizations_rosters_url }
      format.json { head :no_content }
    end
  end
end
