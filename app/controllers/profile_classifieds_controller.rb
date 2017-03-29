class ProfileClassifiedsController < ApplicationController
  before_action :set_profile_classified, only: [:show, :edit, :update, :destroy]

  # GET /profile_classifieds
  # GET /profile_classifieds.json
  def index
    @profile_classifieds = ProfileClassified.all
  end

  # GET /profile_classifieds/1
  # GET /profile_classifieds/1.json
  def show
  end

  # GET /profile_classifieds/new
  def new
    @profile_classified = ProfileClassified.new
  end

  # GET /profile_classifieds/1/edit
  def edit
  end

  # POST /profile_classifieds
  # POST /profile_classifieds.json
  def create
    @profile_classified = ProfileClassified.new(profile_classified_params)

    respond_to do |format|
      if @profile_classified.save
        format.html { redirect_to @profile_classified, notice: 'Profile classified was successfully created.' }
        format.json { render :show, status: :created, location: @profile_classified }
      else
        format.html { render :new }
        format.json { render json: @profile_classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_classifieds/1
  # PATCH/PUT /profile_classifieds/1.json
  def update
    respond_to do |format|
      if @profile_classified.update(profile_classified_params)
        format.html { redirect_to @profile_classified, notice: 'Profile classified was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_classified }
      else
        format.html { render :edit }
        format.json { render json: @profile_classified.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_classifieds/1
  # DELETE /profile_classifieds/1.json
  def destroy
    @profile_classified.destroy
    respond_to do |format|
      format.html { redirect_to profile_classifieds_url, notice: 'Profile classified was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_classified
      @profile_classified = ProfileClassified.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_classified_params
      params.require(:profile_classified).permit(:creatoruuid, :creationdate, :expirationdate, :category, :name, :description, :parceluuid, :parentestate, :snapshotuuid, :simname, :posglobal, :parcelname, :classifiedflags, :priceforlisting)
    end
end
