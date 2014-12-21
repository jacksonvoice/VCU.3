class AddDescriptionToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :description, :text
  	add_column :sections, :description, :text
  end
end
