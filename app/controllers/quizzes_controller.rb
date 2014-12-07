class QuizzesController < ApplicationController

	def index
		@quiz = Quiz.all
	end

	def show
		@course_id = params[:course_id]
	  @min_id = params[:min_id]
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions.order("id ASC")
    
    if current_user && current_user.admin?
			render 'show_quiz'
	  else
		    if @min_id
		    	if @min_id.to_i < @quiz.questions.length
		      	@question = @questions.where("id > ?", @min_id).first
		      	render 'take_quiz'
			    else
			    	redirect_to course_path(@course_id)
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