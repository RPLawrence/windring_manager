class RegionenvironmentsController < ApplicationController
  before_action :set_regionenvironment, only: [:show, :edit, :update, :destroy]

  # GET /regionenvironments
  # GET /regionenvironments.json
  def index
    @regionenvironments = Regionenvironment.all
  end

  # GET /regionenvironments/1
  # GET /regionenvironments/1.json
  def show
  end

  # GET /regionenvironments/new
  def new
    @regionenvironment = Regionenvironment.new
  end

  # GET /regionenvironments/1/edit
  def edit
  end

  # POST /regionenvironments
  # POST /regionenvironments.json
  def create
    @regionenvironment = Regionenvironment.new(regionenvironment_params)

    respond_to do |format|
      if @regionenvironment.save
        format.html { redirect_to @regionenvironment, notice: 'Regionenvironment was successfully created.' }
        format.json { render :show, status: :created, location: @regionenvironment }
      else
        format.html { render :new }
        format.json { render json: @regionenvironment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regionenvironments/1
  # PATCH/PUT /regionenvironments/1.json
  def update
    respond_to do |format|
      if @regionenvironment.update(regionenvironment_params)
        format.html { redirect_to @regionenvironment, notice: 'Regionenvironment was successfully updated.' }
        format.json { render :show, status: :ok, location: @regionenvironment }
      else
        format.html { render :edit }
        format.json { render json: @regionenvironment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regionenvironments/1
  # DELETE /regionenvironments/1.json
  def destroy
    @regionenvironment.destroy
    respond_to do |format|
      format.html { redirect_to regionenvironments_url, notice: 'Regionenvironment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regionenvironment
      @regionenvironment = Regionenvironment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regionenvironment_params
      params.require(:regionenvironment).permit(:llsd_settings)
    end
end
