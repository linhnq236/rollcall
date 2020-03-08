class StudytimesController < ApplicationController
  before_action :set_studytime, only: [:show, :edit, :update, :destroy]

  # GET /studytimes
  # GET /studytimes.json
  def index
    @studytimes = Studytime.all
  end

  # GET /studytimes/1
  # GET /studytimes/1.json
  def show
  end

  # GET /studytimes/new
  def new
    @studytime = Studytime.new
  end

  # GET /studytimes/1/edit
  def edit
  end

  # POST /studytimes
  # POST /studytimes.json
  def create
    @studytime = Studytime.new(studytime_params)

    respond_to do |format|
      if @studytime.save
        format.html { redirect_to @studytime, notice: 'Studytime was successfully created.' }
        format.json { render :show, status: :created, location: @studytime }
      else
        format.html { render :new }
        format.json { render json: @studytime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studytimes/1
  # PATCH/PUT /studytimes/1.json
  def update
    respond_to do |format|
      if @studytime.update(studytime_params)
        format.html { redirect_to @studytime, notice: 'Studytime was successfully updated.' }
        format.json { render :show, status: :ok, location: @studytime }
      else
        format.html { render :edit }
        format.json { render json: @studytime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studytimes/1
  # DELETE /studytimes/1.json
  def destroy
    @studytime.destroy
    respond_to do |format|
      format.html { redirect_to studytimes_url, notice: 'Studytime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studytime
      @studytime = Studytime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studytime_params
      params.require(:studytime).permit(:time)
    end
end
