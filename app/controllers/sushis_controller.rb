class SushisController < ApplicationController
  before_action :set_sushi, only: [:show, :edit, :update, :destroy]

  # GET /sushis
  # GET /sushis.json
  def index
    @sushis = Sushi.all
  end

  # GET /sushis/1
  # GET /sushis/1.json
  def show
  end

  # GET /sushis/new
  def new
    @sushi = Sushi.new
  end

  # GET /sushis/1/edit
  def edit
  end

  # POST /sushis
  # POST /sushis.json
  def create
    @sushi = Sushi.new(sushi_params)

    respond_to do |format|
      if @sushi.save
        format.html { redirect_to @sushi, notice: 'Sushi was successfully created.' }
        format.json { render :show, status: :created, location: @sushi }
      else
        format.html { render :new }
        format.json { render json: @sushi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sushis/1
  # PATCH/PUT /sushis/1.json
  def update
    respond_to do |format|
      if @sushi.update(sushi_params)
        format.html { redirect_to @sushi, notice: 'Sushi was successfully updated.' }
        format.json { render :show, status: :ok, location: @sushi }
      else
        format.html { render :edit }
        format.json { render json: @sushi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sushis/1
  # DELETE /sushis/1.json
  def destroy
    @sushi.destroy
    respond_to do |format|
      format.html { redirect_to sushis_url, notice: 'Sushi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sushi
      @sushi = Sushi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sushi_params
      params.fetch(:sushi, {})
    end
end
