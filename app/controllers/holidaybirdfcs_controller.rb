class HolidaybirdfcsController < ApplicationController
  before_action :set_holidaybirdfc, only: [:show, :edit, :update, :destroy]
  before_action :signed_in?, only: [:new, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]
  # GET /holidaybirdfcs
  # GET /holidaybirdfcs.json
  def index
    @holidaybirdfcs = Holidaybirdfc.all
  end

  # GET /holidaybirdfcs/1
  # GET /holidaybirdfcs/1.json
  def show
  end

  # GET /holidaybirdfcs/new
  def new
    @holidaybirdfc = Holidaybirdfc.new
  end

  # GET /holidaybirdfcs/1/edit
  def edit
  end

  # POST /holidaybirdfcs
  # POST /holidaybirdfcs.json
  def create
    @holidaybirdfc = Holidaybirdfc.new(holidaybirdfc_params)

    respond_to do |format|
      if @holidaybirdfc.save
        format.html { redirect_to @holidaybirdfc, notice: 'Holidaybirdfc was successfully created.' }
        format.json { render :show, status: :created, location: @holidaybirdfc }
      else
        format.html { render :new }
        format.json { render json: @holidaybirdfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holidaybirdfcs/1
  # PATCH/PUT /holidaybirdfcs/1.json
  def update
    respond_to do |format|
      if @holidaybirdfc.update(holidaybirdfc_params)
        format.html { redirect_to @holidaybirdfc, notice: 'Holidaybirdfc was successfully updated.' }
        format.json { render :show, status: :ok, location: @holidaybirdfc }
      else
        format.html { render :edit }
        format.json { render json: @holidaybirdfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holidaybirdfcs/1
  # DELETE /holidaybirdfcs/1.json
  def destroy
    @holidaybirdfc.destroy
    respond_to do |format|
      format.html { redirect_to holidaybirdfcs_url, notice: 'Holidaybirdfc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holidaybirdfc
      @holidaybirdfc = Holidaybirdfc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def holidaybirdfc_params
      params.require(:holidaybirdfc).permit(:channel, :sku, :description, :cc, :forecast, :harvest, :period, :uom)
    end

    def signed_in?
      unless current_user
        redirect_to holidaybirdfcs_path, :alert => "Access denied."
      end
    end

    def authorize_user!
      unless current_user.id == @holidaybird.user_id || current_user.admin?
        redirect_to holidaybirdfc_path(id: @holidaybirdfc.id), :alert => "Access denied."
      end
    end
  end
