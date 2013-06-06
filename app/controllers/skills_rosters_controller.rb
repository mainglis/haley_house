class SkillsRostersController < ApplicationController
  # GET /skills_rosters
  # GET /skills_rosters.json
  def index
    @skills_rosters = SkillsRoster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skills_rosters }
    end
  end

  # GET /skills_rosters/1
  # GET /skills_rosters/1.json
  def show
    @skills_roster = SkillsRoster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skills_roster }
    end
  end

  # GET /skills_rosters/new
  # GET /skills_rosters/new.json
  def new
    @skills_roster = SkillsRoster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skills_roster }
    end
  end

  # GET /skills_rosters/1/edit
  def edit
    @skills_roster = SkillsRoster.find(params[:id])
  end

  # POST /skills_rosters
  # POST /skills_rosters.json
  def create
    @skills_roster = SkillsRoster.new(params[:skills_roster])

    respond_to do |format|
      if @skills_roster.save
        format.html { redirect_to @skills_roster, notice: 'Skills roster was successfully created.' }
        format.json { render json: @skills_roster, status: :created, location: @skills_roster }
      else
        format.html { render action: "new" }
        format.json { render json: @skills_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skills_rosters/1
  # PUT /skills_rosters/1.json
  def update
    @skills_roster = SkillsRoster.find(params[:id])

    respond_to do |format|
      if @skills_roster.update_attributes(params[:skills_roster])
        format.html { redirect_to @skills_roster, notice: 'Skills roster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skills_roster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills_rosters/1
  # DELETE /skills_rosters/1.json
  def destroy
    @skills_roster = SkillsRoster.find(params[:id])
    @skills_roster.destroy

    respond_to do |format|
      format.html { redirect_to skills_rosters_url }
      format.json { head :no_content }
    end
  end
end
