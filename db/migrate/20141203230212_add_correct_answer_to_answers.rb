class AddCorrectAnswerToAnswers < ActiveRecord::Migration
  def change

  	add_column :answers, :correct_answer, :boolean
  end
end
