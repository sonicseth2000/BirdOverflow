class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end
  @@question_id = 0;
  def self.question_id
    @@question_id
  end
     @@reset = true;
  def self.reset
    @@reset
  end
  
   def set_id
   temp =  Question.last(1);
   @@question_id = temp[0].question_id
   @@reset = false
     
   end
 
  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    if @@reset
    set_id
    end
    #ENV["question_id"] = ENV["question_id"] + 1
   # Qu
  # question_params[:question_id] = @@question_id+1
   # @@question_id = @@question_id + 1
    question_params[:question_id] = 5
    @@question_id = @@question_id + 1
 @question = Question.new(question_params)
    @question.question_id =  @@question_id
    respond_to do |format|
     
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      
      params.require(:question).permit(:question_id, :creator_id, :title, :content, :category, :answered, :closing_comment, :timestamp)
    end
end
