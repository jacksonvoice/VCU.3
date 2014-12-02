class Video < ActiveRecord::Base
	belongs_to :section
	has_one :quiz
	accepts_nested_attributes_for :quiz
end
