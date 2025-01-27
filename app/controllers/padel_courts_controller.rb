class PadelCourtsController < ApplicationController
  before_action :set_padel_court, only: %i[ show edit update destroy ]

  # GET /padel_courts or /padel_courts.json
  def index
    @padel_courts = PadelCourt.all
  end

  # GET /padel_courts/1 or /padel_courts/1.json
  def show
  end

  # GET /padel_courts/new
  def new
    @padel_court = PadelCourt.new
  end

  # GET /padel_courts/1/edit
  def edit
  end

  # POST /padel_courts or /padel_courts.json
  def create
    @padel_court = PadelCourt.new(padel_court_params)

    respond_to do |format|
      if @padel_court.save
        format.html { redirect_to @padel_court, notice: "Padel court was successfully created." }
        format.json { render :show, status: :created, location: @padel_court }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @padel_court.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padel_courts/1 or /padel_courts/1.json
  def update
    respond_to do |format|
      if @padel_court.update(padel_court_params)
        format.html { redirect_to @padel_court, notice: "Padel court was successfully updated." }
        format.json { render :show, status: :ok, location: @padel_court }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @padel_court.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padel_courts/1 or /padel_courts/1.json
  def destroy
    @padel_court.destroy!

    respond_to do |format|
      format.html { redirect_to padel_courts_path, status: :see_other, notice: "Padel court was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padel_court
      @padel_court = PadelCourt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def padel_court_params
      params.require(:padel_court).permit(:number, :content, :photo, :padel_center_id)
    end
end
