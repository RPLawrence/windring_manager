class PrimshapesController < ApplicationController
  before_action :set_primshape, only: [:show, :edit, :update, :destroy]

  # GET /primshapes
  # GET /primshapes.json
  def index
    @primshapes = Primshape.all
  end

  # GET /primshapes/1
  # GET /primshapes/1.json
  def show
  end

  # GET /primshapes/new
  def new
    @primshape = Primshape.new
  end

  # GET /primshapes/1/edit
  def edit
  end

  # POST /primshapes
  # POST /primshapes.json
  def create
    @primshape = Primshape.new(primshape_params)

    respond_to do |format|
      if @primshape.save
        format.html { redirect_to @primshape, notice: 'Primshape was successfully created.' }
        format.json { render :show, status: :created, location: @primshape }
      else
        format.html { render :new }
        format.json { render json: @primshape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primshapes/1
  # PATCH/PUT /primshapes/1.json
  def update
    respond_to do |format|
      if @primshape.update(primshape_params)
        format.html { redirect_to @primshape, notice: 'Primshape was successfully updated.' }
        format.json { render :show, status: :ok, location: @primshape }
      else
        format.html { render :edit }
        format.json { render json: @primshape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primshapes/1
  # DELETE /primshapes/1.json
  def destroy
    @primshape.destroy
    respond_to do |format|
      format.html { redirect_to primshapes_url, notice: 'Primshape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primshape
      @primshape = Primshape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def primshape_params
      params.require(:primshape).permit(:Shape, :ScaleX, :ScaleY, :ScaleZ, :PCode, :PathBegin, :PathEnd, :PathScaleX, :PathScaleY, :PathShearX, :PathShearY, :PathSkew, :PathCurve, :PathRadiusOffset, :PathRevolutions, :PathTaperX, :PathTaperY, :PathTwist, :PathTwistBegin, :ProfileBegin, :ProfileEnd, :ProfileCurve, :ProfileHollow, :State, :Texture, :ExtraParams, :Media, :LastAttachPoint)
    end
end
