class QuizzesController < ApplicationController
	

	@@current_question = Array.new
	@@current_question = []
	@@number_correct = 0 



	def submit_answer
		@current_question = @@current_question
		@number_correct = @@number_correct
		@quiz = Quiz.find(params[:id])
		@question = Question.find(params[:question_id])
		@answer = Answer.find(params[:answer_id])
		@course_id = params[:course_id]
		@total = @quiz.questions.length
		
		if !@@current_question.include? @question.id
			@@current_question.push(@question.id)

			if @answer.correct_answer == true
				@@number_correct += 1
				flash.now[:success] = "You did it!"
				render 'quiz_answer'
				
			else @answer.correct_answer == false
				flash.now[:alert] =  "Sorry wrong answer!"
				render 'quiz_answer'
			end

		else 
			flash[:alert] = "Sorry you already answered that question!"
			render 'quiz_answer'
		end

	end

	def index
		@quiz = Quiz.all
	end

	def show
		@current_question = @@current_question
		@number_correct = @@number_correct
		@course_id = params[:course_id]
	  @min_id = params[:min_id]
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions.order("id ASC")
    @total = @quiz.questions.length

    if current_user && current_user.admin?
			render 'show_quiz'
	  else
		    if @min_id
		    	if @min_id.to_i < @quiz.questions.length
		      	@question = @questions.where("id > ?", @min_id).first
		      	render 'take_quiz'
			    else
			    	@@current_question = []
			    	@@number_correct = 0
			    	render 'quiz_grade'
			    end
		    else
		      @question = @questions.first
		      render 'take_quiz'
		    end
		end
	end

	def new
		@video = Video.find(params[:video_id])
		@quiz = @video.build_quiz
		2.times do
			question = @quiz.questions.build
			2.times { question.answers.build }
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
      params.require(:quiz).permit(:name, questions_attributes: [:id, :content, :quiz_id, :_destroy, answers_attributes: [:id, :content, :question_id, :_destroy, :correct_answer]])
  end

end