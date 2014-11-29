class DeletePFromSections < ActiveRecord::Migration
  def change
  	remove_column :sections, :p
  end
end
