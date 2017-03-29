class UsernotesController < ApplicationController
  before_action :set_usernote, only: [:show, :edit, :update, :destroy]

  # GET /usernotes
  # GET /usernotes.json
  def index
    @usernotes = Usernote.all
  end

  # GET /usernotes/1
  # GET /usernotes/1.json
  def show
  end

  # GET /usernotes/new
  def new
    @usernote = Usernote.new
  end

  # GET /usernotes/1/edit
  def edit
  end

  # POST /usernotes
  # POST /usernotes.json
  def create
    @usernote = Usernote.new(usernote_params)

    respond_to do |format|
      if @usernote.save
        format.html { redirect_to @usernote, notice: 'Usernote was successfully created.' }
        format.json { render :show, status: :created, location: @usernote }
      else
        format.html { render :new }
        format.json { render json: @usernote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usernotes/1
  # PATCH/PUT /usernotes/1.json
  def update
    respond_to do |format|
      if @usernote.update(usernote_params)
        format.html { redirect_to @usernote, notice: 'Usernote was successfully updated.' }
        format.json { render :show, status: :ok, location: @usernote }
      else
        format.html { render :edit }
        format.json { render json: @usernote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usernotes/1
  # DELETE /usernotes/1.json
  def destroy
    @usernote.destroy
    respond_to do |format|
      format.html { redirect_to usernotes_url, notice: 'Usernote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usernote
      @usernote = Usernote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usernote_params
      params.require(:usernote).permit(:useruuid, :targetuuid, :notes)
    end
end
