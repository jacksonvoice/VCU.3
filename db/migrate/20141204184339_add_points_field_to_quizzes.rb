class AddPointsFieldToQuizzes < ActiveRecord::Migration
  def change
  	add_column :quizzes, :points, :integer
  end
end
