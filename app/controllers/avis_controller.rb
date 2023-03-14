class AvisController < ApplicationController
  before_action :set_avi, only: %i[ show edit update destroy ]

  # GET /avis or /avis.json
  def index
    @avis = Avi.all
  end

  # GET /avis/1 or /avis/1.json
  def show
  end

  # GET /avis/new
  def new
    @avi = Avi.new
  end

  # GET /avis/1/edit
  def edit
  end

  # POST /avis or /avis.json
  def create
    @avi = Avi.new(avi_params)

    respond_to do |format|
      if @avi.save
        format.html { redirect_to avi_url(@avi), notice: "Avi was successfully created." }
        format.json { render :show, status: :created, location: @avi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avis/1 or /avis/1.json
  def update
    respond_to do |format|
      if @avi.update(avi_params)
        format.html { redirect_to avi_url(@avi), notice: "Avi was successfully updated." }
        format.json { render :show, status: :ok, location: @avi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avis/1 or /avis/1.json
  def destroy
    @avi.destroy

    respond_to do |format|
      format.html { redirect_to avis_url, notice: "Avi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avi
      @avi = Avi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avi_params
      params.require(:avi).permit(:name, :age)
    end
end
