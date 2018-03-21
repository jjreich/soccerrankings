class ClubTypesController < ApplicationController
  before_action :set_club_type, only: [:show, :edit, :update, :destroy]

  # GET /club_types
  # GET /club_types.json
  def index
    @club_types = ClubType.all
  end

  # GET /club_types/1
  # GET /club_types/1.json
  def show
  end

  # GET /club_types/new
  def new
    @club_type = ClubType.new
  end

  # GET /club_types/1/edit
  def edit
  end

  # POST /club_types
  # POST /club_types.json
  def create
    @club_type = ClubType.new(club_type_params)

    respond_to do |format|
      if @club_type.save
        format.html { redirect_to @club_type, notice: 'Club type was successfully created.' }
        format.json { render :show, status: :created, location: @club_type }
      else
        format.html { render :new }
        format.json { render json: @club_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_types/1
  # PATCH/PUT /club_types/1.json
  def update
    respond_to do |format|
      if @club_type.update(club_type_params)
        format.html { redirect_to @club_type, notice: 'Club type was successfully updated.' }
        format.json { render :show, status: :ok, location: @club_type }
      else
        format.html { render :edit }
        format.json { render json: @club_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_types/1
  # DELETE /club_types/1.json
  def destroy
    @club_type.destroy
    respond_to do |format|
      format.html { redirect_to club_types_url, notice: 'Club type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_type
      @club_type = ClubType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_type_params
      params.require(:club_type).permit(:name, :score)
    end
end
