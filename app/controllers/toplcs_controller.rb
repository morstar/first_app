class ToplcsController < ApplicationController
  before_action :set_toplc, only: [:show, :edit, :update, :destroy]

  # GET /toplcs
  # GET /toplcs.json
  def index
    @toplcs = Toplc.all
  end

  # GET /toplcs/1
  # GET /toplcs/1.json
  def show
  end

  # GET /toplcs/new
  def new
    @toplc = Toplc.new
  end

  # GET /toplcs/1/edit
  def edit
  end

  # POST /toplcs
  # POST /toplcs.json
  def create
    @toplc = Toplc.new(toplc_params)

    respond_to do |format|
      if @toplc.save
        format.html { redirect_to @toplc, notice: 'Toplc was successfully created.' }
        format.json { render :show, status: :created, location: @toplc }
      else
        format.html { render :new }
        format.json { render json: @toplc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toplcs/1
  # PATCH/PUT /toplcs/1.json
  def update
    respond_to do |format|
      if @toplc.update(toplc_params)
        format.html { redirect_to @toplc, notice: 'Toplc was successfully updated.' }
        format.json { render :show, status: :ok, location: @toplc }
      else
        format.html { render :edit }
        format.json { render json: @toplc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toplcs/1
  # DELETE /toplcs/1.json
  def destroy
    @toplc.destroy
    respond_to do |format|
      format.html { redirect_to toplcs_url, notice: 'Toplc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toplc
      @toplc = Toplc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toplc_params
      params.require(:toplc).permit(:title, :description)
    end
end
