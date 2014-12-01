class ChangeFileNameToFOnVideos < ActiveRecord::Migration
  def change
  	remove_column :videos, :file_name
  	add_column :videos, :f_name, :string
  end
end
