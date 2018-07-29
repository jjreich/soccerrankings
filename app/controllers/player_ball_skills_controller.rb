class PlayerBallSkillsController < ApplicationController
  before_action :set_player_ball_skill, only: [:show, :edit, :update, :destroy]

  # GET /player_ball_skills
  # GET /player_ball_skills.json
  def index
    @player_ball_skills = PlayerBallSkill.all
  end

  # GET /player_ball_skills/1
  # GET /player_ball_skills/1.json
  def show
  end

  # GET /player_ball_skills/new
  def new
    @player_ball_skill = PlayerBallSkill.new(:player_id => params[:player_id])
  end

  # GET /player_ball_skills/1/edit
  def edit
  end

  # POST /player_ball_skills
  # POST /player_ball_skills.json
  def create
    @player_ball_skill = PlayerBallSkill.new(player_ball_skill_params)

    respond_to do |format|
      if @player_ball_skill.save
        format.html { redirect_to @player_ball_skill, notice: 'Player ball skill was successfully created.' }
        format.json { render :show, status: :created, location: @player_ball_skill }
      else
        format.html { render :new }
        format.json { render json: @player_ball_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_ball_skills/1
  # PATCH/PUT /player_ball_skills/1.json
  def update
    respond_to do |format|
      if @player_ball_skill.update(player_ball_skill_params)
        format.html { redirect_to @player_ball_skill, notice: 'Player ball skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_ball_skill }
      else
        format.html { render :edit }
        format.json { render json: @player_ball_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_ball_skills/1
  # DELETE /player_ball_skills/1.json
  def destroy
    @player_ball_skill.destroy
    respond_to do |format|
      format.html { redirect_to player_ball_skills_url, notice: 'Player ball skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_ball_skill
      @player_ball_skill = PlayerBallSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_ball_skill_params
      params.require(:player_ball_skill).permit(:juggling, :dribbling, :receiving, :heading, :shooting, :longBalls, :skillsTestDate, :twentyYardShuttle, :thirtyYardSprint, :verticalLeap, :player_id)
    end
end
