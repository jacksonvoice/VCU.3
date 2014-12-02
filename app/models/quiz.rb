class Quiz < ActiveRecord::Base
	belongs_to :video
	has_many :questions
	has_many :answers, through: :questions

	accepts_nested_attributes_for :questions
end
