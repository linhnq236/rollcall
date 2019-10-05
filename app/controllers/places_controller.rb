class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  require "base64"

  # GET /places
  # GET /places.json
  def index
    @places = Place.all
    if current_user.present?
      gon.current_user_id = @current_user.id
    end
  end

  def get_all
    
  end
  # GET /places/1
  # GET /places/1.json
  def show
    @key = Apikey.first.name

  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(place_params)
    data = @place.picture
    image_data = Base64.decode64(data['data:image/png;base64,'.length .. -1])
    name = rand(1000..10000)
    new_file=File.new("#{Rails.root}/public/images/#{name}.png", 'wb')
    new_file.write(image_data)
    @place = Place.new(place_params.merge(:picture => name))
    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:lat, :lon, :ip, :picture, :user_id)
    end
end
