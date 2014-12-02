class AddVideoIdToQuiz < ActiveRecord::Migration
  def change
  	add_column :quizzes, :video_id, :integer
  
  end
end
