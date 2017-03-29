class HgTravelingDataController < ApplicationController
  before_action :set_hg_traveling_datum, only: [:show, :edit, :update, :destroy]

  # GET /hg_traveling_data
  # GET /hg_traveling_data.json
  def index
    @hg_traveling_data = HgTravelingDatum.all
  end

  # GET /hg_traveling_data/1
  # GET /hg_traveling_data/1.json
  def show
  end

  # GET /hg_traveling_data/new
  def new
    @hg_traveling_datum = HgTravelingDatum.new
  end

  # GET /hg_traveling_data/1/edit
  def edit
  end

  # POST /hg_traveling_data
  # POST /hg_traveling_data.json
  def create
    @hg_traveling_datum = HgTravelingDatum.new(hg_traveling_datum_params)

    respond_to do |format|
      if @hg_traveling_datum.save
        format.html { redirect_to @hg_traveling_datum, notice: 'Hg traveling datum was successfully created.' }
        format.json { render :show, status: :created, location: @hg_traveling_datum }
      else
        format.html { render :new }
        format.json { render json: @hg_traveling_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hg_traveling_data/1
  # PATCH/PUT /hg_traveling_data/1.json
  def update
    respond_to do |format|
      if @hg_traveling_datum.update(hg_traveling_datum_params)
        format.html { redirect_to @hg_traveling_datum, notice: 'Hg traveling datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @hg_traveling_datum }
      else
        format.html { render :edit }
        format.json { render json: @hg_traveling_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hg_traveling_data/1
  # DELETE /hg_traveling_data/1.json
  def destroy
    @hg_traveling_datum.destroy
    respond_to do |format|
      format.html { redirect_to hg_traveling_data_url, notice: 'Hg traveling datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hg_traveling_datum
      @hg_traveling_datum = HgTravelingDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hg_traveling_datum_params
      params.require(:hg_traveling_datum).permit(:UserID, :GridExternalName, :ServiceToken, :ClientIPAddress, :MyIPAddress, :TMStamp)
    end
end
