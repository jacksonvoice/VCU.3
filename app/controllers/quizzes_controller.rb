class QuizzesController < ApplicationController

	def index
		@quiz = Quiz.all
	end

	def new
		@quiz = Quiz.new
		@quiz.questions.build
	end

	def show
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end

end