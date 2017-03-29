class EstatebansController < ApplicationController
  before_action :set_estateban, only: [:show, :edit, :update, :destroy]

  # GET /estatebans
  # GET /estatebans.json
  def index
    @estatebans = Estateban.all
  end

  # GET /estatebans/1
  # GET /estatebans/1.json
  def show
  end

  # GET /estatebans/new
  def new
    @estateban = Estateban.new
  end

  # GET /estatebans/1/edit
  def edit
  end

  # POST /estatebans
  # POST /estatebans.json
  def create
    @estateban = Estateban.new(estateban_params)

    respond_to do |format|
      if @estateban.save
        format.html { redirect_to @estateban, notice: 'Estateban was successfully created.' }
        format.json { render :show, status: :created, location: @estateban }
      else
        format.html { render :new }
        format.json { render json: @estateban.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estatebans/1
  # PATCH/PUT /estatebans/1.json
  def update
    respond_to do |format|
      if @estateban.update(estateban_params)
        format.html { redirect_to @estateban, notice: 'Estateban was successfully updated.' }
        format.json { render :show, status: :ok, location: @estateban }
      else
        format.html { render :edit }
        format.json { render json: @estateban.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estatebans/1
  # DELETE /estatebans/1.json
  def destroy
    @estateban.destroy
    respond_to do |format|
      format.html { redirect_to estatebans_url, notice: 'Estateban was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estateban
      @estateban = Estateban.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estateban_params
      params.require(:estateban).permit(:EstateID, :bannedUUID, :bannedIp, :bannedIpHostMask, :bannedNameMask)
    end
end
