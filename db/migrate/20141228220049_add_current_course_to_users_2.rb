class AddCurrentCourseToUsers2 < ActiveRecord::Migration
  def change
  	add_column :users, :course_tracking, :text
  end
end
