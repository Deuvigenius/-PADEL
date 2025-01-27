class PadelCentersController < ApplicationController
  before_action :set_padel_center, only: %i[ show edit update destroy ]

  # GET /padel_centers or /padel_centers.json
  def index
    @padel_centers = PadelCenter.all
  end

  # GET /padel_centers/1 or /padel_centers/1.json
  def show
    @padel_center = PadelCenter.find(params[:id])
    @padel_courts = @padel_center.padel_courts
    @rent = Rent.new
  end

  # GET /padel_centers/new
  def new
    @padel_center = PadelCenter.new
  end

  # GET /padel_centers/1/edit
  def edit
  end

  # POST /padel_centers or /padel_centers.json
  def create
    @padel_center = PadelCenter.new(padel_center_params)

    respond_to do |format|
      if @padel_center.save
        format.html { redirect_to @padel_center, notice: "Padel center was successfully created." }
        format.json { render :show, status: :created, location: @padel_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @padel_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padel_centers/1 or /padel_centers/1.json
  def update
    respond_to do |format|
      if @padel_center.update(padel_center_params)
        format.html { redirect_to @padel_center, notice: "Padel center was successfully updated." }
        format.json { render :show, status: :ok, location: @padel_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @padel_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padel_centers/1 or /padel_centers/1.json
  def destroy
    @padel_center.destroy!

    respond_to do |format|
      format.html { redirect_to padel_centers_path, status: :see_other, notice: "Padel center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padel_center
      @padel_center = PadelCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def padel_center_params
      params.require(:padel_center).permit(:name, :address, :number_of_court, :phone_number, :rating, :user_id, :photo)
    end
end
