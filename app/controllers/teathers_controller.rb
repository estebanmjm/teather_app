class TeathersController < ApplicationController
  before_action :set_teather, only: [:show, :edit, :update, :destroy]

  # GET /teathers
  # GET /teathers.json
  def index
    @teathers = Teather.all
  end

  # GET /teathers/1
  # GET /teathers/1.json
  def show
  end

  # GET /teathers/new
  def new
    @teather = Teather.new
  end

  # GET /teathers/1/edit
  def edit
  end

  # POST /teathers
  # POST /teathers.json
  def create
    @teather = Teather.new(teather_params)

    respond_to do |format|
      if @teather.save
        format.html { redirect_to @teather, notice: 'Teather was successfully created.' }
        format.json { render :show, status: :created, location: @teather }
      else
        format.html { render :new }
        format.json { render json: @teather.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teathers/1
  # PATCH/PUT /teathers/1.json
  def update
    respond_to do |format|
      if @teather.update(teather_params)
        format.html { redirect_to @teather, notice: 'Teather was successfully updated.' }
        format.json { render :show, status: :ok, location: @teather }
      else
        format.html { render :edit }
        format.json { render json: @teather.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teathers/1
  # DELETE /teathers/1.json
  def destroy
    @teather.destroy
    respond_to do |format|
      format.html { redirect_to teathers_url, notice: 'Teather was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teather
      @teather = Teather.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teather_params
      params.require(:teather).permit(:name, :address, :manager, :mobile, :phone, :web_site, :logo, :description, :latitude, :longitude)
    end
end
