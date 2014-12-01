class AddDescriptionToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :description, :string
  	add_column :sections, :description, :string
  end
end
