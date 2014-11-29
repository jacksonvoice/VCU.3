class Section < ActiveRecord::Base
	belongs_to :course
	has_many :videos
	accepts_nested_attributes_for :videos
end
