class AvinashesController < ApplicationController
  before_action :set_avinash, only: %i[ show edit update destroy ]

  # GET /avinashes or /avinashes.json
  def index
    @avinashes = Avinash.all
  end

  # GET /avinashes/1 or /avinashes/1.json
  def show
  end

  # GET /avinashes/new
  def new
    @avinash = Avinash.new
  end

  # GET /avinashes/1/edit
  def edit
  end

  # POST /avinashes or /avinashes.json
  def create
    @avinash = Avinash.new(avinash_params)

    respond_to do |format|
      if @avinash.save
        format.html { redirect_to avinash_url(@avinash), notice: "Avinash was successfully created." }
        format.json { render :show, status: :created, location: @avinash }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avinash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avinashes/1 or /avinashes/1.json
  def update
    respond_to do |format|
      if @avinash.update(avinash_params)
        format.html { redirect_to avinash_url(@avinash), notice: "Avinash was successfully updated." }
        format.json { render :show, status: :ok, location: @avinash }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avinash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avinashes/1 or /avinashes/1.json
  def destroy
    @avinash.destroy

    respond_to do |format|
      format.html { redirect_to avinashes_url, notice: "Avinash was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avinash
      @avinash = Avinash.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avinash_params
      params.require(:avinash).permit(:name, :age)
    end
end
