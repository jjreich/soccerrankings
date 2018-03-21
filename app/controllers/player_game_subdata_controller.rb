class PlayerGameSubdataController < ApplicationController
  before_action :set_player_game_subdatum, only: [:show, :edit, :update, :destroy]

  # GET /player_game_subdata
  # GET /player_game_subdata.json
  def index
    @player_game_subdata = PlayerGameSubdatum.all
  end

  # GET /player_game_subdata/1
  # GET /player_game_subdata/1.json
  def show
  end

  # GET /player_game_subdata/new
  def new
    @player_game_subdatum = PlayerGameSubdatum.new
  end

  # GET /player_game_subdata/1/edit
  def edit
  end

  # POST /player_game_subdata
  # POST /player_game_subdata.json
  def create
    @player_game_subdatum = PlayerGameSubdatum.new(player_game_subdatum_params)

    respond_to do |format|
      if @player_game_subdatum.save
        format.html { redirect_to @player_game_subdatum, notice: 'Player game subdatum was successfully created.' }
        format.json { render :show, status: :created, location: @player_game_subdatum }
      else
        format.html { render :new }
        format.json { render json: @player_game_subdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_game_subdata/1
  # PATCH/PUT /player_game_subdata/1.json
  def update
    respond_to do |format|
      if @player_game_subdatum.update(player_game_subdatum_params)
        format.html { redirect_to @player_game_subdatum, notice: 'Player game subdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_game_subdatum }
      else
        format.html { render :edit }
        format.json { render json: @player_game_subdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_game_subdata/1
  # DELETE /player_game_subdata/1.json
  def destroy
    @player_game_subdatum.destroy
    respond_to do |format|
      format.html { redirect_to player_game_subdata_url, notice: 'Player game subdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_game_subdatum
      @player_game_subdatum = PlayerGameSubdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_game_subdatum_params
      params.require(:player_game_subdatum).permit(:minutes, :attemptedPasses, :completedPasses, :corners, :crosses, :clearings, :longBalls, :thruBalls, :keyPasses, :attemptedFirstTouches, :successfulFirstTouches, :dribbles, :dispossessed, :fouled, :shots, :shotsOnTarget, :assists, :goals, :fiftyFiftiesWon, :tackles, :dribblePast, :interceptions, :interventions, :blocks, :ownGoals, :saves, :fouls, :yellowCards, :redCards)
    end
end
