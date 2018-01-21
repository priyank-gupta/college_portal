class GradeClassesController < ApplicationController
  before_action :set_grade_class, only: [:show, :edit, :update, :destroy]

  before_action :load_subject, only: [:new, :edit]
  # GET /grade_classes
  # GET /grade_classes.json
  def index
    @grade_classes = GradeClass.all
  end

  # GET /grade_classes/1
  # GET /grade_classes/1.json
  def show
  end

  # GET /grade_classes/new
  def new
    @grade_class = GradeClass.new
  end

  # GET /grade_classes/1/edit
  def edit
  end

  # POST /grade_classes
  # POST /grade_classes.json
  def create
    @grade_class = GradeClass.new(grade_class_params)

    respond_to do |format|
      if @grade_class.save
        format.html { redirect_to @grade_class, notice: 'Grade class was successfully created.' }
        format.json { render :show, status: :created, location: @grade_class }
      else
        format.html { render :new }
        format.json { render json: @grade_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_classes/1
  # PATCH/PUT /grade_classes/1.json
  def update
    respond_to do |format|
      if @grade_class.update(grade_class_params)
        format.html { redirect_to @grade_class, notice: 'Grade class was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_class }
      else
        format.html { render :edit }
        format.json { render json: @grade_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_classes/1
  # DELETE /grade_classes/1.json
  def destroy
    @grade_class.destroy
    respond_to do |format|
      format.html { redirect_to grade_classes_url, notice: 'Grade class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_class
      @grade_class = GradeClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_class_params
      params.require(:grade_class).permit(:name, subject_ids: [])
    end

    def load_subject
      @subjects = Subject.all
    end
end
