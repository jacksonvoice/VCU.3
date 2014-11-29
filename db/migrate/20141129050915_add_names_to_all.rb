class AddNamesToAll < ActiveRecord::Migration
  def change
 	add_column :courses, :name, :string
 	add_column :sections, :name, :string
 	add_column :videos, :name, :string

  end
end
