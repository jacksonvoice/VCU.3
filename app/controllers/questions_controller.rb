# class CoursesController < ApplicationController

# def create
# 	def create
# 		@video = Video.find(params[:video_id])
# 		@quiz = @video.create_quiz(quiz_params)
# 		respond_to do |format|
# 		if @quiz.save
#         format.html { redirect_to @quiz, notice: 'quiz was successfully created.' }
#         format.json { render :show, status: :created, location: @quiz }
#       else
#         format.html { render :new }
#         format.json { render json: @quiz.errors, status: :unprocessable_entity }
#       end
#     end
# end

# private

# 	def question_params
#       params.require(:quiz).permit(:name, :content)
#     end
# end