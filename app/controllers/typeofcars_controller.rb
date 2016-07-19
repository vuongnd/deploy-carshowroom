class TypeofcarsController < ApplicationController
  before_action :set_typeofcar, only: [:show, :edit, :update, :destroy]

  # GET /typeofcars
  # GET /typeofcars.json
  def index
    @typeofcars = Typeofcar.all
    @eventlast = Event.last
  end

  # GET /typeofcars/1
  # GET /typeofcars/1.json
  def show
     @typeofcars = Typeofcar.all
     @eventlast = Event.last
  end

  # GET /typeofcars/new
  def new
    @typeofcar = Typeofcar.new
  end

  # GET /typeofcars/1/edit
  def edit
  end

  # POST /typeofcars
  # POST /typeofcars.json
  def create
    @typeofcar = Typeofcar.new(typeofcar_params)

    respond_to do |format|
      if @typeofcar.save
        format.html { redirect_to @typeofcar, notice: 'Typeofcar was successfully created.' }
        format.json { render :show, status: :created, location: @typeofcar }
      else
        format.html { render :new }
        format.json { render json: @typeofcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeofcars/1
  # PATCH/PUT /typeofcars/1.json
  def update
    respond_to do |format|
      if @typeofcar.update(typeofcar_params)
        format.html { redirect_to @typeofcar, notice: 'Typeofcar was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeofcar }
      else
        format.html { render :edit }
        format.json { render json: @typeofcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeofcars/1
  # DELETE /typeofcars/1.json
  def destroy
    @typeofcar.destroy
    respond_to do |format|
      format.html { redirect_to typeofcars_url, notice: 'Typeofcar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeofcar
      @typeofcar = Typeofcar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typeofcar_params
      params.require(:typeofcar).permit(:name, :company_id)
    end
end
