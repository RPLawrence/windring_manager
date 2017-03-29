class OsGroupsNoticesController < ApplicationController
  before_action :set_os_groups_notice, only: [:show, :edit, :update, :destroy]

  # GET /os_groups_notices
  # GET /os_groups_notices.json
  def index
    @os_groups_notices = OsGroupsNotice.all
  end

  # GET /os_groups_notices/1
  # GET /os_groups_notices/1.json
  def show
  end

  # GET /os_groups_notices/new
  def new
    @os_groups_notice = OsGroupsNotice.new
  end

  # GET /os_groups_notices/1/edit
  def edit
  end

  # POST /os_groups_notices
  # POST /os_groups_notices.json
  def create
    @os_groups_notice = OsGroupsNotice.new(os_groups_notice_params)

    respond_to do |format|
      if @os_groups_notice.save
        format.html { redirect_to @os_groups_notice, notice: 'Os groups notice was successfully created.' }
        format.json { render :show, status: :created, location: @os_groups_notice }
      else
        format.html { render :new }
        format.json { render json: @os_groups_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os_groups_notices/1
  # PATCH/PUT /os_groups_notices/1.json
  def update
    respond_to do |format|
      if @os_groups_notice.update(os_groups_notice_params)
        format.html { redirect_to @os_groups_notice, notice: 'Os groups notice was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_groups_notice }
      else
        format.html { render :edit }
        format.json { render json: @os_groups_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_groups_notices/1
  # DELETE /os_groups_notices/1.json
  def destroy
    @os_groups_notice.destroy
    respond_to do |format|
      format.html { redirect_to os_groups_notices_url, notice: 'Os groups notice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_groups_notice
      @os_groups_notice = OsGroupsNotice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_groups_notice_params
      params.require(:os_groups_notice).permit(:GroupID, :TMStamp, :FromName, :Subject, :Message, :HasAttachment, :AttachmentType, :AttachmentName, :AttachmentItemID, :AttachmentOwnerID)
    end
end
