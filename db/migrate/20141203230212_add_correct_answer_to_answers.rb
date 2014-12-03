class AddCorrectAnswerToAnswers < ActiveRecord::Migration
  def change
  	remove_column :answers, :correct_answer, :boolean
  	add_column :answers, :correct_answer, :boolean
  end
end
