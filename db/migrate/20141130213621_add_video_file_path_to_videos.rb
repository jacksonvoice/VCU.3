class AddVideoFilePathToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :domain, :string
  	add_column :videos, :file_name, :string
  end
end
