class WiOfflineMsgsController < ApplicationController
  before_action :set_wi_offline_msg, only: [:show, :edit, :update, :destroy]

  # GET /wi_offline_msgs
  # GET /wi_offline_msgs.json
  def index
    @wi_offline_msgs = WiOfflineMsg.all
  end

  # GET /wi_offline_msgs/1
  # GET /wi_offline_msgs/1.json
  def show
  end

  # GET /wi_offline_msgs/new
  def new
    @wi_offline_msg = WiOfflineMsg.new
  end

  # GET /wi_offline_msgs/1/edit
  def edit
  end

  # POST /wi_offline_msgs
  # POST /wi_offline_msgs.json
  def create
    @wi_offline_msg = WiOfflineMsg.new(wi_offline_msg_params)

    respond_to do |format|
      if @wi_offline_msg.save
        format.html { redirect_to @wi_offline_msg, notice: 'Wi offline msg was successfully created.' }
        format.json { render :show, status: :created, location: @wi_offline_msg }
      else
        format.html { render :new }
        format.json { render json: @wi_offline_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wi_offline_msgs/1
  # PATCH/PUT /wi_offline_msgs/1.json
  def update
    respond_to do |format|
      if @wi_offline_msg.update(wi_offline_msg_params)
        format.html { redirect_to @wi_offline_msg, notice: 'Wi offline msg was successfully updated.' }
        format.json { render :show, status: :ok, location: @wi_offline_msg }
      else
        format.html { render :edit }
        format.json { render json: @wi_offline_msg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wi_offline_msgs/1
  # DELETE /wi_offline_msgs/1.json
  def destroy
    @wi_offline_msg.destroy
    respond_to do |format|
      format.html { redirect_to wi_offline_msgs_url, notice: 'Wi offline msg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wi_offline_msg
      @wi_offline_msg = WiOfflineMsg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wi_offline_msg_params
      params.require(:wi_offline_msg).permit(:uuid, :message)
    end
end
