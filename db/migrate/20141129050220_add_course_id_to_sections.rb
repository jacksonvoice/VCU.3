class AddCourseIdToSections < ActiveRecord::Migration
  def change
    add_column :sections, :course_id, :integer
    add_column :sections, :p, :string
  end
end
