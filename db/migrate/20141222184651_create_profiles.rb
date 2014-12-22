class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.text :avatar
    	t.string :first_name
    	t.string :last_name
    	t.text :about
    	t.string :location
    	t.text :badges
    	t.text :points
      t.timestamps
    end
  end
end
