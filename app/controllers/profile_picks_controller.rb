class ProfilePicksController < ApplicationController
  before_action :set_profile_pick, only: [:show, :edit, :update, :destroy]

  # GET /profile_picks
  # GET /profile_picks.json
  def index
    @profile_picks = ProfilePick.all
  end

  # GET /profile_picks/1
  # GET /profile_picks/1.json
  def show
  end

  # GET /profile_picks/new
  def new
    @profile_pick = ProfilePick.new
  end

  # GET /profile_picks/1/edit
  def edit
  end

  # POST /profile_picks
  # POST /profile_picks.json
  def create
    @profile_pick = ProfilePick.new(profile_pick_params)

    respond_to do |format|
      if @profile_pick.save
        format.html { redirect_to @profile_pick, notice: 'Profile pick was successfully created.' }
        format.json { render :show, status: :created, location: @profile_pick }
      else
        format.html { render :new }
        format.json { render json: @profile_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_picks/1
  # PATCH/PUT /profile_picks/1.json
  def update
    respond_to do |format|
      if @profile_pick.update(profile_pick_params)
        format.html { redirect_to @profile_pick, notice: 'Profile pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_pick }
      else
        format.html { render :edit }
        format.json { render json: @profile_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_picks/1
  # DELETE /profile_picks/1.json
  def destroy
    @profile_pick.destroy
    respond_to do |format|
      format.html { redirect_to profile_picks_url, notice: 'Profile pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_pick
      @profile_pick = ProfilePick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_pick_params
      params.require(:profile_pick).permit(:creatoruuid, :toppick, :parceluuid, :name, :description, :snapshotuuid, :user, :originalname, :simname, :posglobal, :sortorder, :enabled)
    end
end
