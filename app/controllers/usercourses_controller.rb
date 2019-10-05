class UsercoursesController < ApplicationController
  before_action :set_usercourse, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /usercourses
  # GET /usercourses.json
  def index
    @usercourses = Usercourse.all
  end

  # GET /usercourses/1
  # GET /usercourses/1.json
  def show
  end

  def user_register_course
    @usercourses = Course.joins(:usercourses).joins(:teacher).where(:usercourses => {user_id: current_user.id}).select("usercourses.*, courses.*, teachers.*")
  end

  # GET /usercourses/new
  def new
    @usercourse = Usercourse.new
  end

  # GET /usercourses/1/edit
  def edit
  end

  # POST /usercourses
  # POST /usercourses.json
  def create
    @usercourse = Usercourse.new(usercourse_params.merge(:user_id => current_user.id))
    respond_to do |format|
      if @usercourse.save
        format.html { redirect_to @usercourse, notice: 'Usercourse was successfully created.' }
        format.json { render :show, status: :created, location: @usercourse }
      else
        format.html { render :new }
        format.json { render json: @usercourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usercourses/1
  # PATCH/PUT /usercourses/1.json
  def update
    respond_to do |format|
      if @usercourse.update(usercourse_params)
        format.html { redirect_to @usercourse, notice: 'Usercourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @usercourse }
      else
        format.html { render :edit }
        format.json { render json: @usercourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usercourses/1
  # DELETE /usercourses/1.json
  def destroy
    @usercourse.destroy
    respond_to do |format|
      format.html { redirect_to usercourses_url, notice: 'Usercourse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usercourse
      @usercourse = Usercourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usercourse_params
      params.require(:usercourse).permit(:course_id, :user_id)
    end
end
