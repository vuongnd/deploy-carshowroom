class TrycarsController < ApplicationController
  before_action :set_trycar, only: [:show, :edit, :update, :destroy]
  before_action :load_car
  # GET /trycars
  # GET /trycars.json
  def index
    @trycars = Trycar.all
  end

  # GET /trycars/1
  # GET /trycars/1.json
  def show
  end

  # GET /trycars/new
  def new
    @trycar = Trycar.new
  end

  # GET /trycars/1/edit
  def edit
  end

  # POST /trycars
  # POST /trycars.json
  def create
    @trycar = Trycar.new(trycar_params)
    respond_to do |format|
      if @trycar.save
        session[:car_id] = nil
        format.html { redirect_to @car, notice: 'Trycar was successfully created.' }
        format.json { render :show, status: :created, location: @Car }
      else
        format.html { render :new }
        format.json { render json: @Car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trycars/1


  # DELETE /trycars/1
  # DELETE /trycars/1.json
  def destroy
    @trycar.destroy
    respond_to do |format|
      format.html { redirect_to trycars_url, notice: 'Trycar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trycar
      @trycar = Trycar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trycar_params
      params.require(:trycar).permit(:name, :old, :address, :phone, :driver_license, :car_id, :fee_trial)
    end
    def load_car
      @car = Car.find(params[:car_id])
    end
end
