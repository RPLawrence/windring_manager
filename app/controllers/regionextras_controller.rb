class RegionextrasController < ApplicationController
  before_action :set_regionextra, only: [:show, :edit, :update, :destroy]

  # GET /regionextras
  # GET /regionextras.json
  def index
    @regionextras = Regionextra.all
  end

  # GET /regionextras/1
  # GET /regionextras/1.json
  def show
  end

  # GET /regionextras/new
  def new
    @regionextra = Regionextra.new
  end

  # GET /regionextras/1/edit
  def edit
  end

  # POST /regionextras
  # POST /regionextras.json
  def create
    @regionextra = Regionextra.new(regionextra_params)

    respond_to do |format|
      if @regionextra.save
        format.html { redirect_to @regionextra, notice: 'Regionextra was successfully created.' }
        format.json { render :show, status: :created, location: @regionextra }
      else
        format.html { render :new }
        format.json { render json: @regionextra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regionextras/1
  # PATCH/PUT /regionextras/1.json
  def update
    respond_to do |format|
      if @regionextra.update(regionextra_params)
        format.html { redirect_to @regionextra, notice: 'Regionextra was successfully updated.' }
        format.json { render :show, status: :ok, location: @regionextra }
      else
        format.html { render :edit }
        format.json { render json: @regionextra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regionextras/1
  # DELETE /regionextras/1.json
  def destroy
    @regionextra.destroy
    respond_to do |format|
      format.html { redirect_to regionextras_url, notice: 'Regionextra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regionextra
      @regionextra = Regionextra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regionextra_params
      params.require(:regionextra).permit(:RegionID, :Name, :value)
    end
end
