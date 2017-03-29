class ImOfflinesController < ApplicationController
  before_action :set_im_offline, only: [:show, :edit, :update, :destroy]

  # GET /im_offlines
  # GET /im_offlines.json
  def index
    @im_offlines = ImOffline.all
  end

  # GET /im_offlines/1
  # GET /im_offlines/1.json
  def show
  end

  # GET /im_offlines/new
  def new
    @im_offline = ImOffline.new
  end

  # GET /im_offlines/1/edit
  def edit
  end

  # POST /im_offlines
  # POST /im_offlines.json
  def create
    @im_offline = ImOffline.new(im_offline_params)

    respond_to do |format|
      if @im_offline.save
        format.html { redirect_to @im_offline, notice: 'Im offline was successfully created.' }
        format.json { render :show, status: :created, location: @im_offline }
      else
        format.html { render :new }
        format.json { render json: @im_offline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /im_offlines/1
  # PATCH/PUT /im_offlines/1.json
  def update
    respond_to do |format|
      if @im_offline.update(im_offline_params)
        format.html { redirect_to @im_offline, notice: 'Im offline was successfully updated.' }
        format.json { render :show, status: :ok, location: @im_offline }
      else
        format.html { render :edit }
        format.json { render json: @im_offline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /im_offlines/1
  # DELETE /im_offlines/1.json
  def destroy
    @im_offline.destroy
    respond_to do |format|
      format.html { redirect_to im_offlines_url, notice: 'Im offline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_im_offline
      @im_offline = ImOffline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def im_offline_params
      params.require(:im_offline).permit(:PrincipalID, :FromID, :Message, :TMStamp)
    end
end
