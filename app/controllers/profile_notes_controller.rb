class ProfileNotesController < ApplicationController
  before_action :set_profile_note, only: [:show, :edit, :update, :destroy]

  # GET /profile_notes
  # GET /profile_notes.json
  def index
    @profile_notes = ProfileNote.all
  end

  # GET /profile_notes/1
  # GET /profile_notes/1.json
  def show
  end

  # GET /profile_notes/new
  def new
    @profile_note = ProfileNote.new
  end

  # GET /profile_notes/1/edit
  def edit
  end

  # POST /profile_notes
  # POST /profile_notes.json
  def create
    @profile_note = ProfileNote.new(profile_note_params)

    respond_to do |format|
      if @profile_note.save
        format.html { redirect_to @profile_note, notice: 'Profile note was successfully created.' }
        format.json { render :show, status: :created, location: @profile_note }
      else
        format.html { render :new }
        format.json { render json: @profile_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_notes/1
  # PATCH/PUT /profile_notes/1.json
  def update
    respond_to do |format|
      if @profile_note.update(profile_note_params)
        format.html { redirect_to @profile_note, notice: 'Profile note was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_note }
      else
        format.html { render :edit }
        format.json { render json: @profile_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_notes/1
  # DELETE /profile_notes/1.json
  def destroy
    @profile_note.destroy
    respond_to do |format|
      format.html { redirect_to profile_notes_url, notice: 'Profile note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_note
      @profile_note = ProfileNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_note_params
      params.require(:profile_note).permit(:useruuid, :targetuuid, :notes)
    end
end
