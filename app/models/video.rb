class Video < ActiveRecord::Base
	belongs_to :section
	has_one :quiz
end
