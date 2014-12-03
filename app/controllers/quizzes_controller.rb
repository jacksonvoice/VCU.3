class QuizzesController < ApplicationController

	def index
		@quiz = Quiz.all
	end

	def show
		
		@quiz = Quiz.find(params[:id])
	end

	def new
		@video = Video.find(params[:video_id])
		@quiz = @video.build_quiz
		5.times do
			question = @quiz.questions.build
			4.times { question.answers.build }
		end
	end

	def create
		@video = Video.find(params[:video_id])
		@quiz = @video.create_quiz(quiz_params)
		respond_to do |format|
			if @quiz.save
	        format.html { redirect_to @quiz, notice: 'quiz was successfully created.' }
	        format.json { render :show, status: :created, location: @quiz }
     	 else
	        format.html { render :new }
	        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
	end

	def edit
		@quiz = Quiz.find(params[:id])
	end

	def update
    
    @quiz = Quiz.find(params[:id])
      if @quiz.update_attributes(quiz_params)
      flash[:success] = "the section has been updated"
      redirect_to [@quiz]
    else
      flash[:error] = "you must enter the correct information"
      redirect_to edit_quiz_path
    end
end

	def destroy
	end

	private


	def quiz_params
      params.require(:quiz).permit(:name, questions_attributes: [:id, :content, :quiz_id, :_destroy, answers_attributes: [:id, :content, :question_id, :_destroy]])
  end

end