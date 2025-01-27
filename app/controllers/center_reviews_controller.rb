class CenterReviewsController < ApplicationController
  before_action :set_center_review, only: %i[ show edit update destroy ]

  # GET /center_reviews or /center_reviews.json
  def index
    @center_reviews = CenterReview.all
  end

  # GET /center_reviews/1 or /center_reviews/1.json
  def show
  end

  # GET /center_reviews/new
  def new
    @center_review = CenterReview.new
  end

  # GET /center_reviews/1/edit
  def edit
  end

  # POST /center_reviews or /center_reviews.json
  def create
    @center_review = CenterReview.new(center_review_params)

    respond_to do |format|
      if @center_review.save
        format.html { redirect_to @center_review, notice: "Center review was successfully created." }
        format.json { render :show, status: :created, location: @center_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @center_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /center_reviews/1 or /center_reviews/1.json
  def update
    respond_to do |format|
      if @center_review.update(center_review_params)
        format.html { redirect_to @center_review, notice: "Center review was successfully updated." }
        format.json { render :show, status: :ok, location: @center_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @center_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /center_reviews/1 or /center_reviews/1.json
  def destroy
    @center_review.destroy!

    respond_to do |format|
      format.html { redirect_to center_reviews_path, status: :see_other, notice: "Center review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_center_review
      @center_review = CenterReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def center_review_params
      params.require(:center_review).permit(:padel_center_id, :user_id, :star, :description)
    end
end
