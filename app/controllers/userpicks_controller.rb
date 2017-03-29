class UserpicksController < ApplicationController
  before_action :set_userpick, only: [:show, :edit, :update, :destroy]

  # GET /userpicks
  # GET /userpicks.json
  def index
    @userpicks = Userpick.all
  end

  # GET /userpicks/1
  # GET /userpicks/1.json
  def show
  end

  # GET /userpicks/new
  def new
    @userpick = Userpick.new
  end

  # GET /userpicks/1/edit
  def edit
  end

  # POST /userpicks
  # POST /userpicks.json
  def create
    @userpick = Userpick.new(userpick_params)

    respond_to do |format|
      if @userpick.save
        format.html { redirect_to @userpick, notice: 'Userpick was successfully created.' }
        format.json { render :show, status: :created, location: @userpick }
      else
        format.html { render :new }
        format.json { render json: @userpick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userpicks/1
  # PATCH/PUT /userpicks/1.json
  def update
    respond_to do |format|
      if @userpick.update(userpick_params)
        format.html { redirect_to @userpick, notice: 'Userpick was successfully updated.' }
        format.json { render :show, status: :ok, location: @userpick }
      else
        format.html { render :edit }
        format.json { render json: @userpick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userpicks/1
  # DELETE /userpicks/1.json
  def destroy
    @userpick.destroy
    respond_to do |format|
      format.html { redirect_to userpicks_url, notice: 'Userpick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userpick
      @userpick = Userpick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userpick_params
      params.require(:userpick).permit(:creatoruuid, :toppick, :parceluuid, :name, :description, :snapshotuuid, :user, :originalname, :simname, :posglobal, :sortorder, :enabled, :gatekeeper)
    end
end
